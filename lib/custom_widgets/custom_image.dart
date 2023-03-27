import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final ImageProvider image;
  final BoxFit fit;

 const CustomImage({Key? key, required this.image, this.fit = BoxFit.fill}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      fit: fit,
    );
  }
}