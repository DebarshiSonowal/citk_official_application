import 'package:citk_official_application/Constants/Constance.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Widgets/Common/custom_app_bar.dart';
import '../Widgets/Common/custom_drawer.dart';

class DepartmentsPage extends StatefulWidget {
  const DepartmentsPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<DepartmentsPage> createState() => _DepartmentsPageState();
}

class _DepartmentsPageState extends State<DepartmentsPage> {
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
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 1.h,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: Constance.departments.length,
          itemBuilder: (cont, index) {
            var item = Constance.departments[index];
            return ExpansionTile(
              backgroundColor: Colors.white12,
              title: Text(
                item.name!,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      height: 0.7.sp,
                      color: Colors.black,
                    ),
              ),
              iconColor: Colors.black,
              collapsedIconColor: Colors.black,
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  color: Colors.black54,
                  height: 0.5.sp,
                ),
                Container(
                  height: 25.h,
                  width: 98.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          item.description!,
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    height: 0.9.sp,
                                    color: Colors.black,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Divider(
                  color: Colors.black54,
                  height: 0.5.sp,
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              color: Colors.black54,
              height: 0.5.sp,
            );
          },
        ),
      ),
    );
  }
}
