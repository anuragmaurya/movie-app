// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  String image;

  BackgroundImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.topRight,
        fit: StackFit.expand,
        children: [
          ClipRRect(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 200, sigmaY: 150),
              child: Image(
                  // height: 200,
                  fit: BoxFit.cover,
                  image: NetworkImage(image, scale: 30.0)),
            ),
          ),
        ]);
  }
}
