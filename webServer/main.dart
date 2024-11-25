import 'dart:io';

void main() async {
  await httpServer();
}

Future<void> httpServer() async {
  final server = await HttpServer.bind(
    "0.0.0.0",
    8080,
  );
  print('Listening on localhost:${server.port}');

  await for (final request in server) {
    request.response
      ..write('Hello, world!')
      ..close();
    print("accessed");
  }
}
