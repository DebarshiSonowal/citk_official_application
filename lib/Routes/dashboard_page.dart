import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:citk_official_application/Models/advertisement.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../Constants/Constance.dart';
import '../Navigation/Navigate.dart';
import '../Widgets/Sections/dashboard_section.dart';
import '../Widgets/slider_item.dart';
import '../Widgets/indicator_section.dart';

class Dashboard_page extends StatefulWidget {
  const Dashboard_page({Key? key}) : super(key: key);

  @override
  State<Dashboard_page> createState() => _Dashboard_pageState();
}

class _Dashboard_pageState extends State<Dashboard_page> {
  final _controller = CarouselController();
  int _current = 0;
  int till = 5;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              Text(
                "Hi! Debarshi Sonowal,",
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Spacer(),
              Text(
                DateFormat("EEEE dd MMM,yyyy").format(DateTime.now()),
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black,
                      fontSize: 10.sp,
                      // fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 1.5.h,
          // ),

          SizedBox(
            height: 1.5.h,
          ),
          const DashboardSection(),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 25.h,
            width: double.infinity,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              SizedBox(
                // height: 25.5.h,
                // padding: EdgeInsets.only(top: 0.h),
                // color: Colors.grey.shade200,
                width: MediaQuery.of(context).size.width,
                // height: 30.h,
                child: CarouselSlider.builder(
                  itemCount: Constance.advertisements.length,
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    var current = Constance.advertisements[index];
                    return SliderItem(current: current);
                  },
                  options: CarouselOptions(
                      autoPlay: true,
                      // enlargeCenterPage: true,
                      aspectRatio: 10.5 / 9,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ),
              IndicatorSection(controller: _controller, current: _current),
            ]),
          ),
          SizedBox(
            height: 1.h,
          ),
          GestureDetector(
            onTap: (){
              Navigation.instance.navigate("/loading");
              Future.delayed(Duration(seconds: 4),(){
                // Navigation.instance.goBack();
                Navigation.instance.navigateAndReplace("/classRoutine");
              });
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                height: 12.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.5.h,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Next Period: UCSE801(229)",
                      style: Theme.of(
                              Navigation.instance.navigatorKey.currentContext!)
                          .textTheme
                          .headline4
                          ?.copyWith(
                            color: Colors.black,
                            fontSize: 12.sp,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      "Current Period",

                      style: Theme.of(
                              Navigation.instance.navigatorKey.currentContext!)
                          .textTheme
                          .headline4
                          ?.copyWith(

                            color: Colors.black,
                            fontSize: 12.sp,
                            // fontWeight: FontWeight.bold,
                          ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width:30.w,
                          child: Center(
                            child: Text(
                              "UCSE805",
                              style: Theme.of(
                                      Navigation.instance.navigatorKey.currentContext!)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                    color: Colors.black87,
                                    // fontSize: 2.2.h,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:30.w,
                          child: Center(
                            child: Text(
                              "Room: 229",
                              style: Theme.of(
                                  Navigation.instance.navigatorKey.currentContext!)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                color: Colors.black87,
                                // fontSize: 2.2.h,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width:30.w,
                          child: Center(
                            child: Text(
                              "HKK",
                              style: Theme.of(
                                  Navigation.instance.navigatorKey.currentContext!)
                                  .textTheme
                                  .headline5
                                  ?.copyWith(
                                color: Colors.black87,
                                // fontSize: 2.2.h,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
