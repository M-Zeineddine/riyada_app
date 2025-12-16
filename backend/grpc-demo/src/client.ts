import path from "path";
import * as grpc from "@grpc/grpc-js";
import * as protoLoader from "@grpc/proto-loader";

// 1. Load the same .proto file
const PROTO_PATH = path.join(__dirname, "../protos/gauge_service.proto");

const packageDefinition = protoLoader.loadSync(PROTO_PATH, {
    keepCase: true,
    longs: String,
    enums: String,
    arrays: true,
});

const protoDescriptor = grpc.loadPackageDefinition(packageDefinition);
const gaugePackage = protoDescriptor.gauge as any;

// 2. Create a client pointing to your server
const client = new gaugePackage.GaugeService(
    "localhost:50051",
    grpc.credentials.createInsecure()
);

// 3. Call the GetGauge RPC
client.GetGauge({ id: 1 }, (err: any, response: any) => {
    if (err) {
        console.error("Error calling GetGauge:", err);
        return;
    }

    console.log("✅ Response from server:");
    console.log(response);
});
