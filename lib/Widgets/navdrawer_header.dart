import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Navigation/Navigate.dart';

class NavDrawerHeader extends StatelessWidget {
  const NavDrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(22.sp), // Image radius
            child: Image.network('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 0.5.h,
        ),
        Text(
          'Jonathan Doe',
          style: Theme.of(Navigation
              .instance.navigatorKey.currentContext!)
              .textTheme
              .headline5
              ?.copyWith(
            color: Colors.black,
            // fontSize: 19.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 0.7.h,
        ),
        Row(
          children: [
            Text(
              '+91 8638372157',
              style: Theme.of(Navigation
                  .instance.navigatorKey.currentContext!)
                  .textTheme
                  .headline6
                  ?.copyWith(
                color: Colors.black,
                // fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 1.5.w,
            ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        GestureDetector(
          onTap: () {
            Navigation.instance.navigate('/editProfile');
          },
          child: Text(
            'View Profile',
            style: Theme.of(Navigation
                .instance.navigatorKey.currentContext!)
                .textTheme
                .headline6
                ?.copyWith(
              color: Colors.black,
              // fontSize: 11.sp,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}