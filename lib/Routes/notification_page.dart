import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Models/notification.dart';
import '../Widgets/Common/custom_app_bar.dart';
import '../Widgets/Common/custom_drawer.dart';
import '../Widgets/notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6E6E6),
      // appBar: const CustomAppBar(),
      // drawer: const CustomDrawer(),
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: false,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 0.5.w,
          vertical: 1.h,
        ),
        // color: Colors.green,
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context, index) {
            var data = NotificationCustom();
            return NotificationItem(data: data);
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 2.w,),
              height: 2.h,
              width: 100.w,
              child: Center(
                child: Divider(
                  thickness: 0.5.sp,
                  color: Colors.black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}


