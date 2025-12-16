import path from "path";
import * as grpc from "@grpc/grpc-js";
import * as protoLoader from "@grpc/proto-loader";

// 1. Load the .proto file
const PROTO_PATH = path.join(__dirname, "../protos/gauge_service.proto");

const packageDefinition = protoLoader.loadSync(PROTO_PATH, {
    keepCase: true,
    longs: String,
    enums: String,
    arrays: true,
});

const protoDescriptor = grpc.loadPackageDefinition(packageDefinition);

// Now we can access gauge.GaugeService
const gaugePackage = protoDescriptor.gauge as any;

// 2. Implement the RPC method
const getGauge = (call: any, callback: any) => {
    console.log("Received request for gauge ID:", call.request.id);

    // Mock response — later this can come from DB, file, etc.
    const response = {
        id: call.request.id,
        name: "Temperature Sensor",
        value: 42.7,
    };

    callback(null, response);
};

// 3. Start the gRPC server
const server = new grpc.Server();

server.addService(gaugePackage.GaugeService.service, {
    GetGauge: getGauge,
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
