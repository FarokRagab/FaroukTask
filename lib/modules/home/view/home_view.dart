import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final List<String> objects = ['Laptop', 'Mobile', 'Bottle', 'Mouse'];

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Object Detection')),
      body: ListView.builder(
        itemCount: objects.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(objects[index]),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              // Get.to(
              //   () => CameraView(),
              //   binding: CameraBinding(),
              //   arguments: objects[index],
              // );
            },
          );
        },
      ),
    );
  }
}
