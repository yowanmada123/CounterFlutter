import 'package:get/get.dart';

class MainController extends GetxController {
  var number = 0.obs;

  void increment() {
    number++;
  }

  void decrement() {
    number--;
  }
}
