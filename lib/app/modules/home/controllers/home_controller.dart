import 'package:get/get.dart';
import 'package:test_project/app/modules/home/api/product_api.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    getAProductDatas();
    super.onInit();
  }

  void getAProductDatas() async {
    await ProductAPi().getProductDetails();
  }
}
