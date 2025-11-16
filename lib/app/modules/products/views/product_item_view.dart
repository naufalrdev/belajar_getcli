import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductItemView extends GetView {
  const ProductItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductItemView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ProductItemView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
