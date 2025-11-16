import 'package:get/get.dart';

class ProductsController extends GetxController {
  RxList<Map<String, dynamic>> allProducts = <Map<String, dynamic>>[
    {"id": DateTime.now().toIso8601String(), "name": "Sepatu", "price": 25000},
    {"id": DateTime.now().toIso8601String(), "name": "Baju", "price": 50000},
    {"id": DateTime.now().toIso8601String(), "name": "Celana", "price": 100000},
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      //eksekusi
      allProducts.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": int.tryParse(price),
      });
      Get.back();
    }
  }
}
