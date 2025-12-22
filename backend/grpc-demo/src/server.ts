import path from "path";
import * as grpc from "@grpc/grpc-js";
import * as protoLoader from "@grpc/proto-loader";
import { COURTS } from "./courts_stub";

// ---------- 1) Paths to proto files ----------
const GAUGE_PROTO_PATH = path.join(__dirname, "../protos/gauge_service.proto");
const COURT_PROTO_PATH = path.join(__dirname, "../protos/court_service.proto");

// ---------- 2) Common proto-loader options ----------
const loaderOptions: protoLoader.Options = {
    keepCase: true, // keeps snake_case fields (price_per_hour, distance_km, image_url)
    longs: String,
    enums: String, // enum values arrive as strings like "NEARBY"
    defaults: true,
    oneofs: true,
    arrays: true,
};

// ---------- 3) Load protos ----------
const gaugePackageDefinition = protoLoader.loadSync(
    GAUGE_PROTO_PATH,
    loaderOptions
);
const courtPackageDefinition = protoLoader.loadSync(
    COURT_PROTO_PATH,
    loaderOptions
);

const gaugeProto = grpc.loadPackageDefinition(gaugePackageDefinition) as any;
const courtProto = grpc.loadPackageDefinition(courtPackageDefinition) as any;

// gauge package: package gauge;
const gaugePackage = gaugeProto.gauge as any;

// courts package: package riyada.courts;
const courtsPackage = courtProto.riyada.courts as any;

// ---------- 4) Implement GaugeService ----------
const getGauge = (call: any, callback: any) => {
    console.log("[GaugeService] GetGauge request:", call.request);

    const response = {
        id: call.request.id,
        name: "Temperature Sensor",
        value: 42.7,
    };

    callback(null, response);
};

// ---------- 5) Implement CourtService ----------
const listCourts = (call: any, callback: any) => {
    const { query = "", sport = "", sort = "SORT_UNSPECIFIED" } = call.request;

    console.log("[CourtService] ListCourts request:", { query, sport, sort });

    let items = [...COURTS];

    // Search by name/location
    const q = String(query).trim().toLowerCase();
    if (q) {
        items = items.filter(
            (c) =>
                c.name.toLowerCase().includes(q) ||
                c.location.toLowerCase().includes(q)
        );
    }

    // Sport filter
    const s = String(sport).trim().toLowerCase();
    if (s && s !== "all_sports") {
        items = items.filter((c) => c.sport.toLowerCase() === s);
    }

    // Sort (enum arrives as string because enums: String)
    switch (sort) {
        case "NEARBY":
            items.sort((a, b) => (a.distance_km ?? 1e9) - (b.distance_km ?? 1e9));
            break;
        case "PRICE_LOW":
            items.sort((a, b) => a.price_per_hour - b.price_per_hour);
            break;
        case "PRICE_HIGH":
            items.sort((a, b) => b.price_per_hour - a.price_per_hour);
            break;
        default:
            break;
    }

    callback(null, { courts: items });
};

// ---------- 6) Start server and register services ----------
const server = new grpc.Server();

server.addService(gaugePackage.GaugeService.service, {
    GetGauge: getGauge,
});

server.addService(courtsPackage.CourtService.service, {
    ListCourts: listCourts,
});

const PORT = "50051";

server.bindAsync(
    `0.0.0.0:${PORT}`,
    grpc.ServerCredentials.createInsecure(),
    (err, bindPort) => {
        if (err) {
            console.error("Server error:", err);
            return;
        }
        console.log(`🚀 gRPC server running on port ${bindPort}`);
        server.start();
    }
);
