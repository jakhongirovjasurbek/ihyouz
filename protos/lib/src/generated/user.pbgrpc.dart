///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class AuthenticatedUserServiceClient extends $grpc.Client {
  static final _$getAuthenticatedUser =
      $grpc.ClientMethod<$0.GetAuthenticatedUserById, $0.AuthenticatedUser>(
          '/AuthenticatedUserService/getAuthenticatedUser',
          ($0.GetAuthenticatedUserById value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AuthenticatedUser.fromBuffer(value));

  AuthenticatedUserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AuthenticatedUser> getAuthenticatedUser(
      $0.GetAuthenticatedUserById request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAuthenticatedUser, request, options: options);
  }
}

abstract class AuthenticatedUserServiceBase extends $grpc.Service {
  $core.String get $name => 'AuthenticatedUserService';

  AuthenticatedUserServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetAuthenticatedUserById, $0.AuthenticatedUser>(
            'getAuthenticatedUser',
            getAuthenticatedUser_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetAuthenticatedUserById.fromBuffer(value),
            ($0.AuthenticatedUser value) => value.writeToBuffer()));
  }

  $async.Future<$0.AuthenticatedUser> getAuthenticatedUser_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetAuthenticatedUserById> request) async {
    return getAuthenticatedUser(call, await request);
  }

  $async.Future<$0.AuthenticatedUser> getAuthenticatedUser(
      $grpc.ServiceCall call, $0.GetAuthenticatedUserById request);
}
