// GENERATED CODE -- DO NOT EDIT!

'use strict';
var grpc = require('@grpc/grpc-js');
var court_service_pb = require('./court_service_pb.js');

function serialize_riyada_courts_ListCourtsRequest(arg) {
  if (!(arg instanceof court_service_pb.ListCourtsRequest)) {
    throw new Error('Expected argument of type riyada.courts.ListCourtsRequest');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_riyada_courts_ListCourtsRequest(buffer_arg) {
  return court_service_pb.ListCourtsRequest.deserializeBinary(new Uint8Array(buffer_arg));
}

function serialize_riyada_courts_ListCourtsResponse(arg) {
  if (!(arg instanceof court_service_pb.ListCourtsResponse)) {
    throw new Error('Expected argument of type riyada.courts.ListCourtsResponse');
  }
  return Buffer.from(arg.serializeBinary());
}

function deserialize_riyada_courts_ListCourtsResponse(buffer_arg) {
  return court_service_pb.ListCourtsResponse.deserializeBinary(new Uint8Array(buffer_arg));
}


var CourtServiceService = exports.CourtServiceService = {
  listCourts: {
    path: '/riyada.courts.CourtService/ListCourts',
    requestStream: false,
    responseStream: false,
    requestType: court_service_pb.ListCourtsRequest,
    responseType: court_service_pb.ListCourtsResponse,
    requestSerialize: serialize_riyada_courts_ListCourtsRequest,
    requestDeserialize: deserialize_riyada_courts_ListCourtsRequest,
    responseSerialize: serialize_riyada_courts_ListCourtsResponse,
    responseDeserialize: deserialize_riyada_courts_ListCourtsResponse,
  },
};

exports.CourtServiceClient = grpc.makeGenericClientConstructor(CourtServiceService, 'CourtService');
