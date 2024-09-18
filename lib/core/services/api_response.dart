import 'package:http/http.dart' as http;

class ApiResponse {
  Map<String, dynamic> data;
  http.Response response;
  ApiResponse({required this.data, required this.response});
}
