// This is a generated file - do not edit.
//
// Generated from gauge_service.proto.

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

import 'gauge_service.pb.dart' as $0;

export 'gauge_service.pb.dart';

/// The GaugeService defines the RPC methods that clients can call.
@$pb.GrpcServiceName('gauge.GaugeService')
class GaugeServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  GaugeServiceClient(super.channel, {super.options, super.interceptors});

  /// Simple RPC: client sends a GaugeRequest, server returns a GaugeResponse.
  $grpc.ResponseFuture<$0.GaugeResponse> getGauge(
    $0.GaugeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getGauge, request, options: options);
  }

  // method descriptors

  static final _$getGauge =
      $grpc.ClientMethod<$0.GaugeRequest, $0.GaugeResponse>(
          '/gauge.GaugeService/GetGauge',
          ($0.GaugeRequest value) => value.writeToBuffer(),
          $0.GaugeResponse.fromBuffer);
}

@$pb.GrpcServiceName('gauge.GaugeService')
abstract class GaugeServiceBase extends $grpc.Service {
  $core.String get $name => 'gauge.GaugeService';

  GaugeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GaugeRequest, $0.GaugeResponse>(
        'GetGauge',
        getGauge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GaugeRequest.fromBuffer(value),
        ($0.GaugeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GaugeResponse> getGauge_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.GaugeRequest> $request) async {
    return getGauge($call, await $request);
  }

  $async.Future<$0.GaugeResponse> getGauge(
      $grpc.ServiceCall call, $0.GaugeRequest request);
}
