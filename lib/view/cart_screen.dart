import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/cart_controller.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Item'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.listProduct.length,
          itemBuilder: (context, index) => cartItem(
            controller.listProduct[index],
          ),
        ),
      ),
    );
  }

  Widget cartItem(ProductModel model) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(model.image),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Price ${model.price}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Qty ${model.qty}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                IconButton(
                  onPressed: () => controller.deleteCart(model),
                  icon: Icon(Icons.close),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
