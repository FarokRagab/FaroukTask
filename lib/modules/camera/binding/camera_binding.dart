import 'package:farok_task/modules/camera/controller/camera_controller.dart';
import 'package:get/get.dart';

class CameraBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AppCameraController>(()=>AppCameraController());
  }
}