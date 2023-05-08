import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Constants/Constance.dart';
import '../Models/dashboard_item.dart';
import '../Navigation/Navigate.dart';

class DashboardCardItem extends StatelessWidget {
  const DashboardCardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final DashboardItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            // border: Border.all(
            //   color: Colors.red[500],
            // ),
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 1.h,
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(item.icon,color: Constance.secondaryColor,size: 26.sp,),
            Text(
              item.name ?? "",
              style: Theme.of(Navigation
                  .instance.navigatorKey.currentContext!)
                  .textTheme
                  .headline4
                  ?.copyWith(
                color: Colors.black,
                // fontSize: 2.2.h,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              item.subtitle ?? "",
              style: Theme.of(Navigation
                  .instance.navigatorKey.currentContext!)
                  .textTheme
                  .headline6
                  ?.copyWith(
                color: Colors.black54,
                // fontSize: 2.2.h,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}