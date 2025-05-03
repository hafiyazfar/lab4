import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;
  void toggleExpansion() {
    isExpanded.value = !isExpanded.value;

    print("the value is $isExpanded");
  }
}
