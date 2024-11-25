import 'package:dio/dio.dart';

final dio = Dio();

void main() async {
  final result = await getHttp("https://jsonplaceholder.typicode.com/todos/1");
  print(result["userId"]);
}

Future<Map<String, dynamic>> getHttp(String url) async {
  final response = await dio.get(url);
  print(response.data);
  return response.data;
}
