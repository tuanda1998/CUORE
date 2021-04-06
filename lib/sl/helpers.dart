import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class HelperFunction {
  Future sendSms(String text) async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
    };
    var url =
        'https://cuore-sms.azurewebsites.net/api/HttpTrigger2?code=QXl3PM41immtOYF6myeZPJgl6m7r6/0zacidKlkbcPhZDM3aGxS4EA==';
    final response = await http.post(url,
        headers: headers, body: json.encode({"SmsInfo": text}));

    return response.statusCode;
  }
}
