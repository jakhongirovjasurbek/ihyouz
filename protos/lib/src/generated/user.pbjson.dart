///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use authenticatedUserDescriptor instead')
const AuthenticatedUser$json = const {
  '1': 'AuthenticatedUser',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'firstName', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
  ],
};

/// Descriptor for `AuthenticatedUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List authenticatedUserDescriptor = $convert.base64Decode('ChFBdXRoZW50aWNhdGVkVXNlchIOCgJpZBgBIAEoBVICaWQSHAoJZmlyc3ROYW1lGAIgASgJUglmaXJzdE5hbWUSGgoIbGFzdE5hbWUYAyABKAlSCGxhc3ROYW1l');
@$core.Deprecated('Use getAuthenticatedUserByIdDescriptor instead')
const GetAuthenticatedUserById$json = const {
  '1': 'GetAuthenticatedUserById',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
  ],
};

/// Descriptor for `GetAuthenticatedUserById`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAuthenticatedUserByIdDescriptor = $convert.base64Decode('ChhHZXRBdXRoZW50aWNhdGVkVXNlckJ5SWQSDgoCaWQYASABKAVSAmlk');
