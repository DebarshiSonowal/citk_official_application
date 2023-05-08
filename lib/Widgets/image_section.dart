import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constants/Constance.dart';
import '../Models/advertisement.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key? key,
    required this.current,
  }) : super(key: key);

  final Advertisement current;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: CachedNetworkImage(
        imageUrl: current.image ?? "",
        width: double.infinity,
        height: 55.h,
        fit: BoxFit.fill,
        // filterQuality: FilterQuality.low,
        placeholder: (cont, _) {
          return Image.asset(
            Constance.logoIcon,
            // color: Colors.black,
          );
        },
        errorWidget: (cont, _, e) {
          return Image.asset(
            Constance.logoIcon,
            fit: BoxFit.fitWidth,
          );
        },
      ),
    );
  }
}