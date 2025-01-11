import 'package:farok_task/modules/camera/controller/camera_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CameraView extends StatelessWidget {
  final String selectedObject = Get.arguments;
  final AppCameraController _cameraController = Get.put(AppCameraController());

  CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detecting: $selectedObject')),
    );
  }
}
