// This is a generated file - do not edit.
//
// Generated from courts/court_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sortOrderDescriptor instead')
const SortOrder$json = {
  '1': 'SortOrder',
  '2': [
    {'1': 'SORT_UNSPECIFIED', '2': 0},
    {'1': 'NEARBY', '2': 1},
    {'1': 'PRICE_LOW', '2': 2},
    {'1': 'PRICE_HIGH', '2': 3},
  ],
};

/// Descriptor for `SortOrder`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List sortOrderDescriptor = $convert.base64Decode(
    'CglTb3J0T3JkZXISFAoQU09SVF9VTlNQRUNJRklFRBAAEgoKBk5FQVJCWRABEg0KCVBSSUNFX0'
    'xPVxACEg4KClBSSUNFX0hJR0gQAw==');

@$core.Deprecated('Use courtDescriptor instead')
const Court$json = {
  '1': 'Court',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'location', '3': 3, '4': 1, '5': 9, '10': 'location'},
    {'1': 'price_per_hour', '3': 4, '4': 1, '5': 1, '10': 'pricePerHour'},
    {'1': 'image_url', '3': 5, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'distance_km', '3': 6, '4': 1, '5': 1, '10': 'distanceKm'},
    {'1': 'sport', '3': 7, '4': 1, '5': 9, '10': 'sport'},
    {'1': 'amenities', '3': 8, '4': 3, '5': 9, '10': 'amenities'},
    {'1': 'lat', '3': 9, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 10, '4': 1, '5': 1, '10': 'lng'},
  ],
};

/// Descriptor for `Court`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List courtDescriptor = $convert.base64Decode(
    'CgVDb3VydBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZRIaCghsb2NhdGlvbh'
    'gDIAEoCVIIbG9jYXRpb24SJAoOcHJpY2VfcGVyX2hvdXIYBCABKAFSDHByaWNlUGVySG91chIb'
    'CglpbWFnZV91cmwYBSABKAlSCGltYWdlVXJsEh8KC2Rpc3RhbmNlX2ttGAYgASgBUgpkaXN0YW'
    '5jZUttEhQKBXNwb3J0GAcgASgJUgVzcG9ydBIcCglhbWVuaXRpZXMYCCADKAlSCWFtZW5pdGll'
    'cxIQCgNsYXQYCSABKAFSA2xhdBIQCgNsbmcYCiABKAFSA2xuZw==');

@$core.Deprecated('Use listCourtsRequestDescriptor instead')
const ListCourtsRequest$json = {
  '1': 'ListCourtsRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'sport', '3': 2, '4': 1, '5': 9, '10': 'sport'},
    {
      '1': 'sort',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.riyada.courts.SortOrder',
      '10': 'sort'
    },
  ],
};

/// Descriptor for `ListCourtsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCourtsRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0Q291cnRzUmVxdWVzdBIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSFAoFc3BvcnQYAiABKA'
    'lSBXNwb3J0EiwKBHNvcnQYAyABKA4yGC5yaXlhZGEuY291cnRzLlNvcnRPcmRlclIEc29ydA==');

@$core.Deprecated('Use listCourtsResponseDescriptor instead')
const ListCourtsResponse$json = {
  '1': 'ListCourtsResponse',
  '2': [
    {
      '1': 'courts',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.riyada.courts.Court',
      '10': 'courts'
    },
  ],
};

/// Descriptor for `ListCourtsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCourtsResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0Q291cnRzUmVzcG9uc2USLAoGY291cnRzGAEgAygLMhQucml5YWRhLmNvdXJ0cy5Db3'
    'VydFIGY291cnRz');
