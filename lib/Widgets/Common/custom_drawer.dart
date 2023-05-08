import 'package:citk_official_application/Helper/Repository.dart';
import 'package:citk_official_application/Navigation/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/Constance.dart';
import '../../Helper/Storage.dart';
import '../navdrawer_header.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 2.w, right: 2.w),
        child: ListView(
          children: [
            const DrawerHeader(
              child: NavDrawerHeader(),
            ),
            SizedBox(
              height: 0.2.h,
            ),
            Divider(
              thickness: 0.07.h,
              color: Colors.black,
            ),
            SizedBox(
              height: 0.2.h,
            ),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                var item = Constance.drawerBoardItems[index];
                return ListTile(
                  onTap: () {
                    switch (index) {
                      case 0:
                        Provider.of<Repository>(
                                Navigation
                                        .instance.navigatorKey.currentContext ??
                                    context,
                                listen: false)
                            .setCurrentPage(0);
                        Navigation.instance.navigate("/");
                        break;
                      case 1:
                        Navigation.instance
                            .navigate("/history", args: "History");
                        break;
                      case 2:
                        Navigation.instance.navigate("/course", args: "Course");
                        break;
                      case 3:
                        Navigation.instance.navigate("/department", args: "Department");
                        break;
                      case 4:
                        // Provider.of<Repository>(
                        //     Navigation.instance.navigatorKey.currentContext ??
                        //         context,
                        //     listen: false)
                        //     .setCurrentPage(4);
                        Navigation.instance.navigate("/about", args: "About");
                        break;
                    }
                  },
                  leading: Icon(
                    item.icon,
                    color: Colors.black,
                  ),
                  title: Text(
                    item.name,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 0.2.h,
                  child: Divider(
                    thickness: 0.02.h,
                    color: Colors.black,
                  ),
                );
              },
              itemCount: Constance.drawerBoardItems.length,
            ),
          ],
        ),
      ),
    );
  }
}
