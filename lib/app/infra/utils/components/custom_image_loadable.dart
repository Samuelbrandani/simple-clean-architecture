import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';

class CustomImageLoadable extends StatelessWidget {
  final String? imageUrl;
  final bool? isPerson;
  final double? iconErrorSize;
  final double width;
  final double height;
  final BoxFit fit;
  final Alignment alignment;

  const CustomImageLoadable({
    this.fit = BoxFit.fill,
    this.alignment = Alignment.center,
    this.isPerson = false,
    this.iconErrorSize = 25,
    required this.imageUrl,
    required this.width,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: imageUrl != null && imageUrl!.isNotEmpty,
      replacement: Icon(
        isPerson! ? Icons.person : Icons.broken_image_rounded,
        size: iconErrorSize,
      ),
      child: ImageNetwork(
        image: imageUrl!,
        fitWeb: BoxFitWeb.contain,
        width: width,
        height: height,
        onLoading: const ColoredBox(
          color: Colors.transparent,
          child: SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(),
          ),
        ),
        onError: Icon(
          isPerson! ? Icons.person : Icons.broken_image_rounded,
          size: iconErrorSize,
        ),
      ),
    );
  }
}
