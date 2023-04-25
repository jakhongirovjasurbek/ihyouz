import 'dart:io';

import 'package:protos/protos.dart';
import 'package:server/user_service.dart';

void main(List<String> args) async {
  final server = Server([AuthenticatedUserService()]);

  final port = int.parse(Platform.environment['PORT'] ?? '8080');

  await server.serve(port: port);

  print('Server listening on port ${server.port}');
}
