import 'package:annapurna/controllers/cart_controller.dart';
import 'package:annapurna/controllers/popular_product_controller.dart';
import 'package:annapurna/controllers/recommended_product_controller.dart';
import 'package:annapurna/data/api/api_client.dart';
import 'package:annapurna/data/repository/cart_repo.dart';
import 'package:annapurna/data/repository/popular_product_repo.dart';
import 'package:annapurna/data/repository/recommended_product_repo.dart';
import 'package:annapurna/utils/app_constants.dart';
import 'package:get/get.dart';
Future<void> init()async {
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
  Get.lazyPut(()=>PopularProductRepo(apiClient:Get.find()));
  Get.lazyPut(()=>RecommendedProductRepo(apiClient:Get.find()));
  Get.lazyPut(()=>CartRepo());

  Get.lazyPut(()=>PopularProductController(popularProductRepo:Get.find()));
  Get.lazyPut(()=>RecommendedProductController(recommendedProductRepo:Get.find()));
  Get.lazyPut(()=>CartController(cartRepo: Get.find()));

}