
import 'package:flutter/material.dart';

class NetworkImageCommon extends StatelessWidget {
  final double? height;
  final double? width;
  final String URL;
  final BoxFit? fit;
  final String defaultImage;
  const NetworkImageCommon({super.key, this.height, this.width, required this.URL, this.fit, required this.defaultImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FadeInImage(
        fadeInDuration: const Duration(milliseconds: 150),
        image: NetworkImage(URL),
        fit: fit,
        placeholder: sliderPlaceHolder(defaultImage),
        placeholderErrorBuilder: ((context, error, stackTrace) {
          return errorWidget(defaultImage);
        }),
        imageErrorBuilder: ((context, error, stackTrace) {
          return errorWidget(defaultImage);
        }),
      ),
    );
  }

  sliderPlaceHolder(String defaultImage) {
    return AssetImage(
      defaultImage,
    );
  }

  errorWidget(String defaultImage) {
    return Image.asset(
      defaultImage,
    );
  }

}