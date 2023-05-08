import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_animation/shimmer_animation.dart' as left;
import 'package:sizer/sizer.dart';

import '../../Constants/Constance.dart';

// import '../Helper/Constance.dart';

class LoadingDialog extends StatelessWidget {
  LoadingDialog() {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Container(
              // padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                // color: Colors.white,
                // shape: BoxShape.circle,
              ),
              child: SizedBox(
                height: 15.h,
                width: 25.w,
                child: Shimmer.fromColors(
                  baseColor: Colors.black54,
                  highlightColor: Constance.secondaryColor,
                  child: Image.asset(
                    "assets/images/large_logo.png",
                    // height: 10.h,
                    // width: 20.w,
                    fit: BoxFit.fill,
                  ),
                ),
                // child: Shimmer(
                //   color: Colors.black,
                //   child: Container(
                //     color: Colors.white70,
                //     child: Image.asset(
                //       "assets/images/large_logo.png",
                //       // height: 10.h,
                //       // width: 20.w,
                //       fit: BoxFit.fill,
                //     ),
                //   ),
                // ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
