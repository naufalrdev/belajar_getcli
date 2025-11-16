import 'package:belajar_getcli/app/modules/products/controllers/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  const AddProductView({super.key});
  @override
  Widget build(BuildContext context) {
    final productC = Get.find<ProductsController>();
    return Scaffold(
      appBar: AppBar(title: const Text('AddProductView'), centerTitle: true),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: InputDecoration(labelText: "Product Name"),
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Price"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => productC.addProduct(
              controller.nameC.text,
              controller.priceC.text,
            ),
            child: Text("Add Product"),
          ),
        ],
      ),
    );
  }
}
