import 'dart:convert';
import 'package:flutter_w_screen/models/waiting_list_response.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiService {
  static Future<WaitingListResponse> getWaitingList() async {
    WaitingListResponse waitingListResponse;
    final url = Uri.parse(
        '${dotenv.env['API_SERVER']}/v1/restaurants/51725/waiting-display');
    final response = await http.get(url);
    print(response.body);
    if (response.statusCode == 200) {
      final dynamic body = jsonDecode(response.body);
      waitingListResponse = WaitingListResponse.fromJson(body);
      print('api 응답 성공');
      return waitingListResponse;
    }
    throw Error();
  }
}
