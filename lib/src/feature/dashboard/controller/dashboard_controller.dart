import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxBool seeMore = false.obs;
  RxInt itemCont = 4.obs;
  RxBool container1Visible = true.obs;

  // void viewDriver(List<Driver> driver) {
  //   if (seeMore.isTrue) {
  //     itemCont(AppConst.driver.length);
  //     print(seeMore);
  //     seeMore.value = false;
  //   } else {
  //     itemCont(4);
  //     seeMore.value = true;
  //     print(seeMore);
  //   }
  // }
  void removeContainersAndShowProgress() {
    container1Visible.value = false;

    Future.delayed(const Duration(seconds: 1), () {
      container1Visible.value = true;
    });
  }
}
