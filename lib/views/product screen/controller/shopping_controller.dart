import 'package:first_ui/views/product%20screen/model/product_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class ShoppingController extends GetxController {
  RxList<ProductModel> products = <ProductModel>[].obs;
  void addToCard(ProductModel pro) async {
    if (products.isEmpty) {
      products.add(pro);
    } else {
      int index = products.indexWhere((element) => element.code == pro.code);
      print(index);
      if (index < 0) {
        products.add(pro);
      } else {
        products[index].qty = products[index].qty! + 1;
        print(products[index].qty);
      }
    }

    update();
  }

  void removeQty(int code, int index) async {
    if (code == products[index].code! && products[index].qty! > 1) {
      products[index].qty = products[index].qty! - 1;
    }
    update();
  }

  void deleteProduct(int index) async {
    products.removeAt(index);

    update();
  }
}
