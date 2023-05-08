import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../Widgets/Common/custom_app_bar.dart';
import '../Widgets/Common/custom_drawer.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 1.h,
        ),
        // child: ,
        child: HorizontalDataTable(
          leftHandSideColumnWidth: 40.w,
          rightHandSideColumnWidth: 65.w,
          isFixedHeader: true,
          headerWidgets: _getTitleWidget(),
          leftSideItemBuilder: _generateFirstColumnRow,
          rightSideItemBuilder: _generateRightHandSideColumnRow,
          itemCount: 1,
          rowSeparatorWidget: const Divider(
            color: Colors.black54,
            height: 1.0,
            thickness: 0.0,
          ),
          leftHandSideColBackgroundColor: const Color(0xFFFFFFFF),
          rightHandSideColBackgroundColor: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Actions', 45.w),
      _getTitleItemWidget('Action', 22.w),
      // _getTitleItemWidget('Phone', 37.w),
      _getTitleItemWidget('Date', 35.w),
    ];
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      width: width,
      height: 6.h,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Center(
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black54,
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }

  Widget _generateFirstColumnRow(BuildContext context, int index) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return Container(
            // color: Colors.red,
            width: 65.w,
            height: 5.h,
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Center(
              child: Text(
                "${i}th Semester Admission",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.black, height: 0.7.sp),
              ),
            ),
          );
        });
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return SizedBox(
            width: 70.w,
            child: Row(
              children: <Widget>[
                Container(
                  width: 27.w,
                  height: 4.h,
                  // padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 35.w,
                  height: 5.h,
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  alignment: Alignment.centerLeft,
                  child: Center(
                    child: Text(
                      DateFormat("dd/MM/yyyy").format(Faker().date.dateTime()),
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
