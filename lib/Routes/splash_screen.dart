import 'package:citk_official_application/Constants/Constance.dart';
import 'package:citk_official_application/Navigation/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Constance.logoIcon,
              height: 20.h,
              width: 40.w,
            ),
            Text(
              "Central Institute of Technology, Kokrajhar",
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Colors.black,
                    fontSize: 14.sp,
                    height: 1.sp,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              width: 10.w,
              height: 5.h,
              child: const CircularProgressIndicator(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4),(){
      Navigation.instance.navigateAndReplace("/main");
    });
  }
}
