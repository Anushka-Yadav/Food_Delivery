
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class PopularProductRepo extends GetxService {
  // if using GetX State Management,
  //You have to extends GetxService to get data from internet

  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    //return apiClient.getData("http://jaridekat.com/product/list");

    return apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  }
}