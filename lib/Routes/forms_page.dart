import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Colors.green,
      child: HorizontalDataTable(
        leftHandSideColumnWidth: 100,
        rightHandSideColumnWidth: 600,
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
        leftHandSideColBackgroundColor: Color(0xFFFFFFFF),
        rightHandSideColBackgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }

  List<Widget> _getTitleWidget() {
    return [
      _getTitleItemWidget('Form Name', 25.w),
      _getTitleItemWidget('Status', 17.w),
      // _getTitleItemWidget('Phone', 37.w),
      _getTitleItemWidget('Register', 25.w),
      _getTitleItemWidget('Termination', 25.w),
      _getTitleItemWidget('Action', 25.w),
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
            width: 25.w,
            height: 6.h,
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Center(
              child: Text(
                Faker().person.name(),
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
          return Row(
            children: <Widget>[
              Container(
                width: 20.w,
                height: 6.h,
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.notifications_active,
                          color: Colors.green),
                      Text(
                        'Active',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              color: Colors.black,
                            ),
                      )
                    ],
                  ),
                ),
              ),
              // Container(
              //   width: 35.w,
              //   height: 5.h,
              //   padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
              //   alignment: Alignment.centerLeft,
              //   child: Center(
              //     child: Text(
              //       Faker().phoneNumber.de(),
              //       maxLines: 1,
              //       overflow: TextOverflow.ellipsis,
              //       style: Theme.of(context).textTheme.headline6?.copyWith(
              //             color: Colors.black,
              //           ),
              //     ),
              //   ),
              // ),
              Container(
                width: 25.w,
                height: 5.h,
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Text(
                    DateFormat("dd MMM,yyyy").format(Faker().date.dateTime()),
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              Container(
                width: 25.w,
                height: 5.h,
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Text(
                    DateFormat("dd MMM,yyyy").format(Faker().date.dateTime()),
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              Container(
                width: 25.w,
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
            ],
          );
        });
  }
}
