import 'package:annapurna/controllers/popular_product_controller.dart';
import 'package:annapurna/controllers/recommended_product_controller.dart';
import 'package:annapurna/pages/cart/cart_page.dart';
import 'package:annapurna/pages/food/recommended_food_detail.dart';
import 'package:annapurna/pages/home/food_page_body.dart';
import 'package:annapurna/pages/home/main_food_page.dart';
import 'package:annapurna/pages/food/popular_food_detail.dart';
import 'package:annapurna/pages/food/recommended_food_detail.dart';
import 'package:annapurna/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
