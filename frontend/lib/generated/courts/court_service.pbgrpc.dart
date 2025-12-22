// This is a generated file - do not edit.
//
// Generated from courts/court_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'court_service.pb.dart' as $0;

export 'court_service.pb.dart';

@$pb.GrpcServiceName('riyada.courts.CourtService')
class CourtServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  CourtServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListCourtsResponse> listCourts(
    $0.ListCourtsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listCourts, request, options: options);
  }

  // method descriptors

  static final _$listCourts =
      $grpc.ClientMethod<$0.ListCourtsRequest, $0.ListCourtsResponse>(
          '/riyada.courts.CourtService/ListCourts',
          ($0.ListCourtsRequest value) => value.writeToBuffer(),
          $0.ListCourtsResponse.fromBuffer);
}

@$pb.GrpcServiceName('riyada.courts.CourtService')
abstract class CourtServiceBase extends $grpc.Service {
  $core.String get $name => 'riyada.courts.CourtService';

  CourtServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListCourtsRequest, $0.ListCourtsResponse>(
        'ListCourts',
        listCourts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListCourtsRequest.fromBuffer(value),
        ($0.ListCourtsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListCourtsResponse> listCourts_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListCourtsRequest> $request) async {
    return listCourts($call, await $request);
  }

  $async.Future<$0.ListCourtsResponse> listCourts(
      $grpc.ServiceCall call, $0.ListCourtsRequest request);
}
