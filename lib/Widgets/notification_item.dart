import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Models/notification.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.data,
  });

  final NotificationCustom data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        // color: Colors.green,
        // height: 4.h,
        width: 95.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              data.description ?? "",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                height: 0.8.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18, // Image radius
                      backgroundImage: NetworkImage(
                        data.image??"",
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      data.name ?? "",
                      style:
                      Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
                Text(
                  data.time ?? "",
                  style:
                  Theme.of(context).textTheme.headline6?.copyWith(
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}