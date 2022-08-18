import 'package:get/get.dart';
import 'package:getx_gridviewcodex/models/product.dart';
import 'package:getx_gridviewcodex/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<Product>.empty(growable: true).obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading(true);
    try {
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
