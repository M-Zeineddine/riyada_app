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

import 'court_service.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'court_service.pbenum.dart';

/// One court object (full version)
class Court extends $pb.GeneratedMessage {
  factory Court({
    $core.String? id,
    $core.String? name,
    $core.String? location,
    $core.double? pricePerHour,
    $core.String? imageUrl,
    $core.double? distanceKm,
    $core.String? sport,
    $core.Iterable<$core.String>? amenities,
    $core.double? lat,
    $core.double? lng,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (location != null) result.location = location;
    if (pricePerHour != null) result.pricePerHour = pricePerHour;
    if (imageUrl != null) result.imageUrl = imageUrl;
    if (distanceKm != null) result.distanceKm = distanceKm;
    if (sport != null) result.sport = sport;
    if (amenities != null) result.amenities.addAll(amenities);
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    return result;
  }

  Court._();

  factory Court.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Court.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Court',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'riyada.courts'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'location')
    ..aD(4, _omitFieldNames ? '' : 'pricePerHour')
    ..aOS(5, _omitFieldNames ? '' : 'imageUrl')
    ..aD(6, _omitFieldNames ? '' : 'distanceKm')
    ..aOS(7, _omitFieldNames ? '' : 'sport')
    ..pPS(8, _omitFieldNames ? '' : 'amenities')
    ..aD(9, _omitFieldNames ? '' : 'lat')
    ..aD(10, _omitFieldNames ? '' : 'lng')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Court clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Court copyWith(void Function(Court) updates) =>
      super.copyWith((message) => updates(message as Court)) as Court;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Court create() => Court._();
  @$core.override
  Court createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Court getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Court>(create);
  static Court? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get location => $_getSZ(2);
  @$pb.TagNumber(3)
  set location($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLocation() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocation() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get pricePerHour => $_getN(3);
  @$pb.TagNumber(4)
  set pricePerHour($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPricePerHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearPricePerHour() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get imageUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set imageUrl($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasImageUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearImageUrl() => $_clearField(5);

  /// Note: distance can be computed on backend if client provides user location.
  /// For now we keep it in the response to match your model.
  @$pb.TagNumber(6)
  $core.double get distanceKm => $_getN(5);
  @$pb.TagNumber(6)
  set distanceKm($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDistanceKm() => $_has(5);
  @$pb.TagNumber(6)
  void clearDistanceKm() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get sport => $_getSZ(6);
  @$pb.TagNumber(7)
  set sport($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSport() => $_has(6);
  @$pb.TagNumber(7)
  void clearSport() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get amenities => $_getList(7);

  @$pb.TagNumber(9)
  $core.double get lat => $_getN(8);
  @$pb.TagNumber(9)
  set lat($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLat() => $_has(8);
  @$pb.TagNumber(9)
  void clearLat() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get lng => $_getN(9);
  @$pb.TagNumber(10)
  set lng($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLng() => $_has(9);
  @$pb.TagNumber(10)
  void clearLng() => $_clearField(10);
}

/// Request: client asks for courts with filter/sort (backend does filtering)
class ListCourtsRequest extends $pb.GeneratedMessage {
  factory ListCourtsRequest({
    $core.String? query,
    $core.String? sport,
    SortOrder? sort,
  }) {
    final result = create();
    if (query != null) result.query = query;
    if (sport != null) result.sport = sport;
    if (sort != null) result.sort = sort;
    return result;
  }

  ListCourtsRequest._();

  factory ListCourtsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListCourtsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCourtsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'riyada.courts'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aOS(2, _omitFieldNames ? '' : 'sport')
    ..aE<SortOrder>(3, _omitFieldNames ? '' : 'sort',
        enumValues: SortOrder.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCourtsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCourtsRequest copyWith(void Function(ListCourtsRequest) updates) =>
      super.copyWith((message) => updates(message as ListCourtsRequest))
          as ListCourtsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCourtsRequest create() => ListCourtsRequest._();
  @$core.override
  ListCourtsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListCourtsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCourtsRequest>(create);
  static ListCourtsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sport => $_getSZ(1);
  @$pb.TagNumber(2)
  set sport($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSport() => $_has(1);
  @$pb.TagNumber(2)
  void clearSport() => $_clearField(2);

  @$pb.TagNumber(3)
  SortOrder get sort => $_getN(2);
  @$pb.TagNumber(3)
  set sort(SortOrder value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSort() => $_has(2);
  @$pb.TagNumber(3)
  void clearSort() => $_clearField(3);
}

/// Response: list of courts
class ListCourtsResponse extends $pb.GeneratedMessage {
  factory ListCourtsResponse({
    $core.Iterable<Court>? courts,
  }) {
    final result = create();
    if (courts != null) result.courts.addAll(courts);
    return result;
  }

  ListCourtsResponse._();

  factory ListCourtsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListCourtsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListCourtsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'riyada.courts'),
      createEmptyInstance: create)
    ..pPM<Court>(1, _omitFieldNames ? '' : 'courts', subBuilder: Court.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCourtsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCourtsResponse copyWith(void Function(ListCourtsResponse) updates) =>
      super.copyWith((message) => updates(message as ListCourtsResponse))
          as ListCourtsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCourtsResponse create() => ListCourtsResponse._();
  @$core.override
  ListCourtsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ListCourtsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListCourtsResponse>(create);
  static ListCourtsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Court> get courts => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
