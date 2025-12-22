// package: riyada.courts
// file: court_service.proto

/* tslint:disable */
/* eslint-disable */

import * as grpc from "@grpc/grpc-js";
import * as court_service_pb from "./court_service_pb";

interface ICourtServiceService extends grpc.ServiceDefinition<grpc.UntypedServiceImplementation> {
    listCourts: ICourtServiceService_IListCourts;
}

interface ICourtServiceService_IListCourts extends grpc.MethodDefinition<court_service_pb.ListCourtsRequest, court_service_pb.ListCourtsResponse> {
    path: "/riyada.courts.CourtService/ListCourts";
    requestStream: false;
    responseStream: false;
    requestSerialize: grpc.serialize<court_service_pb.ListCourtsRequest>;
    requestDeserialize: grpc.deserialize<court_service_pb.ListCourtsRequest>;
    responseSerialize: grpc.serialize<court_service_pb.ListCourtsResponse>;
    responseDeserialize: grpc.deserialize<court_service_pb.ListCourtsResponse>;
}

export const CourtServiceService: ICourtServiceService;

export interface ICourtServiceServer extends grpc.UntypedServiceImplementation {
    listCourts: grpc.handleUnaryCall<court_service_pb.ListCourtsRequest, court_service_pb.ListCourtsResponse>;
}

export interface ICourtServiceClient {
    listCourts(request: court_service_pb.ListCourtsRequest, callback: (error: grpc.ServiceError | null, response: court_service_pb.ListCourtsResponse) => void): grpc.ClientUnaryCall;
    listCourts(request: court_service_pb.ListCourtsRequest, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: court_service_pb.ListCourtsResponse) => void): grpc.ClientUnaryCall;
    listCourts(request: court_service_pb.ListCourtsRequest, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: court_service_pb.ListCourtsResponse) => void): grpc.ClientUnaryCall;
}

export class CourtServiceClient extends grpc.Client implements ICourtServiceClient {
    constructor(address: string, credentials: grpc.ChannelCredentials, options?: Partial<grpc.ClientOptions>);
    public listCourts(request: court_service_pb.ListCourtsRequest, callback: (error: grpc.ServiceError | null, response: court_service_pb.ListCourtsResponse) => void): grpc.ClientUnaryCall;
    public listCourts(request: court_service_pb.ListCourtsRequest, metadata: grpc.Metadata, callback: (error: grpc.ServiceError | null, response: court_service_pb.ListCourtsResponse) => void): grpc.ClientUnaryCall;
    public listCourts(request: court_service_pb.ListCourtsRequest, metadata: grpc.Metadata, options: Partial<grpc.CallOptions>, callback: (error: grpc.ServiceError | null, response: court_service_pb.ListCourtsResponse) => void): grpc.ClientUnaryCall;
}
