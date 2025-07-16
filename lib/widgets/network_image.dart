//
// import 'package:flutter/material.dart';
//
// class NetworkImageCommon extends StatelessWidget {
//   final double? height;
//   final double? width;
//   final String URL;
//   final BoxFit? fit;
//   final String defaultImage;
//   const NetworkImageCommon({super.key, this.height, this.width, required this.URL, this.fit, required this.defaultImage});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: width,
//       child: FadeInImage(
//         fadeInDuration: const Duration(milliseconds: 150),
//         image: NetworkImage(URL),
//         fit: fit,
//         placeholder: sliderPlaceHolder(defaultImage),
//         placeholderErrorBuilder: ((context, error, stackTrace) {
//           return errorWidget(defaultImage);
//         }),
//         imageErrorBuilder: ((context, error, stackTrace) {
//           return errorWidget(defaultImage);
//         }),
//       ),
//     );
//   }
//
//   sliderPlaceHolder(String defaultImage) {
//     return AssetImage(
//       defaultImage,
//     );
//   }
//
//   errorWidget(String defaultImage) {
//     return Image.asset(
//       defaultImage,
//     );
//   }
//
// }
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NetworkImageCommon extends StatelessWidget {
  final double? height;
  final double? width;
  final String URL;
  final BoxFit? fit;
  final String defaultImage;

  const NetworkImageCommon({
    super.key,
    this.height,
    this.width,
    required this.URL,
    this.fit,
    required this.defaultImage,
  });

  @override
  Widget build(BuildContext context) {
    // Use CachedNetworkImage to automatically handle caching.
    return CachedNetworkImage(
      // The URL of the image to load.
      imageUrl: URL,
      // Constrain the size of the image widget.
      height: height,
      width: width,
      // How the image should be inscribed into the box.
      fit: fit,
      // A widget to show while the image is loading from the network.
      placeholder: (context, url) => Image.asset(
        defaultImage,
        fit: fit,
      ),
      // A widget to show if an error occurs while loading the image.
      errorWidget: (context, url, error) => Image.asset(
        defaultImage,
        fit: fit,
      ),
      // Optional: Control the fade-in duration after the image is loaded.
      fadeInDuration: const Duration(milliseconds: 150),
    );
  }
}
