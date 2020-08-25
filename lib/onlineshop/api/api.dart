import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

class Api {
  final String email = 'streich.bonita@example.com';
  final String password = '12345678';

  Future<dynamic> login() async {
    final msg = jsonEncode({
      "email": "streich.bonita@example.com",
      "password": 12345678,
    });
    final String _url = 'http://10.0.2.2:8000/api';
    try {
      final response = await http.post("$_url/newlogin",
          headers: {'Content-Type': 'application/json'}, body: msg);
      if (response.statusCode == 201) {
        print(response.body);
        print(jsonDecode(response.body));
        return response.body;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
