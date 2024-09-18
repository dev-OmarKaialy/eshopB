import 'dart:convert';
import 'dart:developer';
import 'package:eshop_b/core/services/api_response.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "";
  Map<String, String> header = {
    "Content-type": "applications/json",
    "Accept": "application/json",
  };

  Future<ApiResponse> getRequst(String? token,
      {required String endpoint}) async {
    if (token != null) {
      header["Authorization"] = 'Bearer $token';
    }

    var response =
        await http.get(Uri.parse("$baseUrl$endpoint"), headers: header);

    Map<String, dynamic> data = jsonDecode(response.body);

    return ApiResponse(data: data, response: response);
  }

  Future<ApiResponse> postRequst(String? token,
      {required String endpoint, required Map<String, dynamic> body}) async {
    if (token != null) {
      header["Authorization"] = 'Bearer $token';
    }
    var response = await http.post(
      Uri.parse("$baseUrl$endpoint"),
      headers: header,
      body: jsonEncode(body),
    );

    log("respone ${response.body}");

    var data = jsonDecode(response.body);
    return ApiResponse(data: data, response: response);
  }

  

  Future<ApiResponse> deteletRequst(String? token,
      {required String endpoint}) async {
    if (token != null) {
      header["Authorization"] = 'Bearer $token';

      // header["'Authorization': 'Bearer $token',"];
    }

    var response =
        await http.delete(Uri.parse("$baseUrl$endpoint"), headers: header);

    if (response.body.isEmpty) {}
    // var data = jsonDecode(response.body);

    return ApiResponse(data: {}, response: response);
  }
}

