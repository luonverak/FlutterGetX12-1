import 'package:demo2/model/product_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<ProductModel> listProduct = <ProductModel>[].obs;


  addCart(ProductModel productModel) {
    listProduct.add(productModel);
    update();
  }

  deleteCart(ProductModel productModel) {
    listProduct.remove(productModel);
    update();
  }

}
