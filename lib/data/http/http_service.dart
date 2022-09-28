import 'dart:io';
import 'package:http/http.dart';

class HttpService {
  final Client _client;

  const HttpService(this._client);

  Future<Response> get(String url) async {
    final Uri uri = Uri.parse(url);
    final response = await _client.get(uri);
    checkAndThrowError(response);
    return response;
  }

  Future<Response> post(
    String url,
    Map<String, String> body,
    Map<String, String> headers,
  ) async {
    final Uri uri = Uri.parse(url);
    final response = await _client.post(uri, headers: headers, body: body);
    checkAndThrowError(response);
    return response;
  }

  static void checkAndThrowError(Response response) {
    if (response.statusCode != HttpStatus.ok) throw Exception(response.body);
  }
}
