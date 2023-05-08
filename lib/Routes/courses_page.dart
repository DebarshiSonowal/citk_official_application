import 'package:citk_official_application/Constants/Constance.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Widgets/Common/custom_app_bar.dart';
import '../Widgets/Common/custom_drawer.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
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
          horizontal: 1.w,
          vertical: 1.h,
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: Constance.semesters.length,
          itemBuilder: (context, index) {
            var item = Constance.semesters[index];
            return ExpansionTile(
              initiallyExpanded: index == 0 ? true : false,
              collapsedIconColor: Colors.black,
              iconColor: Colors.black,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  index != 0
                      ? Container()
                      : Container(
                          width: 2.w,
                          height: 2.w,
                          decoration: const BoxDecoration(
                            // border: Border.all(
                            //   // color: Colors.red[500],
                            // ),
                            color: Constance.secondaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                        ),
                  index != 0
                      ? Container()
                      : SizedBox(
                          width: 2.w,
                        ),
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ],
              ),
              children: [
                SizedBox(
                  width: 98.w,
                  // height: 10.h,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var sub = item.courses[index];
                      return ListTile(
                        title: SizedBox(
                          width: 40.w,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 35.w,
                                child: Text(
                                  sub.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5
                                      ?.copyWith(
                                        color: Colors.black87,
                                        fontSize: 11.sp,
                                        height: 0.7.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              sub.isCompleted
                                  ? const Icon(
                                      Icons.check,
                                      color: Constance.primaryColor,
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                        trailing: SizedBox(
                          width: 30.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${sub.credit}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
                                      color: Colors.black87,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                "${sub.marks}",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
                                      fontSize: 11.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 90.w,
                        child: Divider(
                          color: Colors.black45,
                          thickness: 0.3.sp,
                        ),
                      );
                    },
                    itemCount: item.courses.length,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
