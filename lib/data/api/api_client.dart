import 'package:get/get_connect/connect.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';

import '../../utils/app_constants.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeader;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl; // attribute from GetConnect
    timeout = Duration(seconds: 30); // attribute from GetConnect
    token = AppConstants.TOKEN;
    _mainHeader = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      print('Error apiClient.getData');
      return Response(
        statusCode: 1,
        statusText: e.toString(),
      );
    }
  }
}