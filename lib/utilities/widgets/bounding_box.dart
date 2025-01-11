import 'package:flutter/material.dart';

class BoundingBox extends StatelessWidget {
  final List<dynamic> detections;

  const BoundingBox({super.key, required this.detections});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: detections.map((detection) {
        final left = detection['rect']['x'] * MediaQuery.of(context).size.width;
        final top = detection['rect']['y'] * MediaQuery.of(context).size.height;
        final width =
            detection['rect']['w'] * MediaQuery.of(context).size.width;
        final height =
            detection['rect']['h'] * MediaQuery.of(context).size.height;

        return Positioned(
          left: left,
          top: top,
          width: width,
          height: height,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red, width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        );
      }).toList(),
    );
  }
}
