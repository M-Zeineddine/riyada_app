// This is a generated file - do not edit.
//
// Generated from courts/court_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Sorting options (typed, standard for gRPC)
class SortOrder extends $pb.ProtobufEnum {
  static const SortOrder SORT_UNSPECIFIED =
      SortOrder._(0, _omitEnumNames ? '' : 'SORT_UNSPECIFIED');
  static const SortOrder NEARBY =
      SortOrder._(1, _omitEnumNames ? '' : 'NEARBY');
  static const SortOrder PRICE_LOW =
      SortOrder._(2, _omitEnumNames ? '' : 'PRICE_LOW');
  static const SortOrder PRICE_HIGH =
      SortOrder._(3, _omitEnumNames ? '' : 'PRICE_HIGH');

  static const $core.List<SortOrder> values = <SortOrder>[
    SORT_UNSPECIFIED,
    NEARBY,
    PRICE_LOW,
    PRICE_HIGH,
  ];

  static final $core.List<SortOrder?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static SortOrder? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const SortOrder._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
