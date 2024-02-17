
import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool value = false.obs;

  onTap(){
    value.value = !value.value;
  }
}