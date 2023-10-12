import 'package:get/get.dart';
import 'package:tutorial_getx/controller/list_controller.dart';
import 'package:tutorial_getx/controller/tap_controller.dart';

Future<void> init() async{
  Get.put(()=>TapController());
  Get.put(()=>ListController());
  
}