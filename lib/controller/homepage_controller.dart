import 'package:get/get.dart';

class HomePageController extends GetxController {
  List cartList = [];

  void AddtoCart(index) {
    print(index);
    try {
      var test = cartList.firstWhere((element) => element.id == index.id);
      Get.snackbar("Already Added", "This Product Already Added To Cart");
    } catch (e) {
      cartList.add([index]);
      update();
    }

    // if (cartList.firstWhere((element) => element.id == index.id)) {
    //   Get.snackbar("Already Added", "This Product Already Added To Cart");
    // } else {
    //   cartList.add([index]);
    //   update();
    // }
  }
}
