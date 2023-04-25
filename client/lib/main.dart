import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:protos/protos.dart' as protos;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const App(),
      );
    } else if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
      return Container();
    } else if (kIsWeb) {
      return Container();
    } else {
      return Container();
    }
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late protos.ClientChannel _channel;

  late protos.AuthenticatedUserServiceClient _stub;

  @override
  void initState() {
    super.initState();

    _channel = protos.ClientChannel(
      'localhost',
      port: 8080,
      options: const protos.ChannelOptions(
        credentials: protos.ChannelCredentials.insecure(),
      ),
    );

    _stub = protos.AuthenticatedUserServiceClient(_channel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<protos.AuthenticatedUser>(
        future:
            _stub.getAuthenticatedUser(protos.GetAuthenticatedUserById(id: 1)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
                child: Text(
              '${snapshot.data!.firstName} ${snapshot.data!.lastName}',
            ));
          } else {
            return const Center(child: CupertinoActivityIndicator());
          }
        },
      ),
    );
  }
}
