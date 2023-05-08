import 'package:cached_network_image/cached_network_image.dart';
import 'package:citk_official_application/Widgets/subtitle_section.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constants/Constance.dart';
import '../Models/advertisement.dart';
import 'image_section.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    Key? key,
    required this.current,
  }) : super(key: key);

  final Advertisement current;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ImageSection(current: current),
          SubtitleSection(current: current),
        ],
      ),
    );
  }
}
