import path from "path";
import * as grpc from "@grpc/grpc-js";
import * as protoLoader from "@grpc/proto-loader";

const COURT_PROTO_PATH = path.join(__dirname, "../protos/court_service.proto");

const packageDef = protoLoader.loadSync(COURT_PROTO_PATH, {
    keepCase: true,
    longs: String,
    enums: String, // enum comes as string
    defaults: true,
    oneofs: true,
});

const proto = grpc.loadPackageDefinition(packageDef) as any;
const courtsPackage = proto.riyada.courts;

// Create client
const client = new courtsPackage.CourtService(
    "localhost:50051",
    grpc.credentials.createInsecure()
);

// 1) Test: list all courts
client.ListCourts(
    { query: "beirut", sport: "Football", sort: "PRICE_LOW" },
    (err: any, resp: any) => {
        if (err) {
            console.error("❌ ListCourts error:", err);
            return;
        }
        console.log("✅ ListCourts response:");
        console.log(JSON.stringify(resp, null, 2));
    }
);
