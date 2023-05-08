import 'package:citk_official_application/Constants/Constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../Widgets/Common/custom_app_bar.dart';
import '../Widgets/Common/custom_drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6E6E6),
      appBar: CustomAppBar2(
        title: widget.title,
      ),
      drawer: const CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.green,
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 2.h,
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              Constance.logoVector,
              fit: BoxFit.fill,
              height: 10.h,
            ),
            SizedBox(
              height: 1.h,
            ),
            Text(
              Constance.aboutString,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    height: 0.8.sp,
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: 1.h,
            ),

            SizedBox(
              height: 1.h,
            ),
            const Spacer(),
            Text(
              "© 2023 All rights reserved Designed by Devcom Club",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                height: 0.8.sp,
                color: Colors.black54,
              ),
            ),
            Text(
              "Build with Flutter by Debarshi Sonowal",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                height: 0.8.sp,
                color: Colors.black54,
              ),
            ),
            Text(
              "Made in India with Love",
              style: Theme.of(context).textTheme.headline6?.copyWith(
                height: 0.8.sp,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
