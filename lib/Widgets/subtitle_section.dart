import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Models/advertisement.dart';

class SubtitleSection extends StatelessWidget {
  const SubtitleSection({
    Key? key,
    required this.current,
  }) : super(key: key);

  final Advertisement current;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      // color: Colors.black.withOpacity(0.5),
      padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 4.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            current.subtitle ?? 'Big Deals\nand Offers',
            style: Theme.of(context).textTheme.headline3?.copyWith(
              color: Colors.grey.shade200,
              height: 1.sp,
              fontSize: 13.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
        ],
      ),
    );
  }
}