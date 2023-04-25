/// Support for doing something awesome.
///
/// More dartdocs go here.
library protos;

export 'src/generated/user.pb.dart';
export 'src/generated/user.pbenum.dart';
export 'src/generated/user.pbjson.dart';
export 'src/generated/user.pbgrpc.dart';

export 'package:grpc/grpc.dart';
// TODO: Export any libraries intended for clients of this package.


/// export PATH="$PATH":"$HOME/.pub-cache/bin" 
/// protoc --dart_out=grpc:lib/src/generated -Iprotos protos/user.proto