import 'package:demo2/controller/cart_controller.dart';
import 'package:demo2/model/product_model.dart';
import 'package:demo2/view/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo App"),
        actions: [
          GestureDetector(
            onTap: () => Get.to(CartScreen()),
            child: badges.Badge(
              badgeContent: Obx(
                () => Text('${controller.listProduct.length}'),
              ),
              child: Icon(Icons.shopping_cart),
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1 / 1.5,
          children: List.generate(
            listProduct.length,
            (index) => item(
              listProduct[index],
            ),
          ),
        ),
      ),
    );
  }

  Widget item(ProductModel productModel) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(productModel.image),
            ),
          ),
          child: Text(
            productModel.name,
            style: const TextStyle(
              fontSize: 20,
              backgroundColor: Colors.amber,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: GestureDetector(
            onTap: () {
              controller.addCart(productModel);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
