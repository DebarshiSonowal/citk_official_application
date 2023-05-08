import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../Constants/Constance.dart';
import '../Widgets/Common/custom_app_bar.dart';

class ClassRoutine extends StatefulWidget {
  const ClassRoutine({Key? key}) : super(key: key);

  @override
  State<ClassRoutine> createState() => _ClassRoutineState();
}

class _ClassRoutineState extends State<ClassRoutine> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      fetchEvents();
    });
  }

  void fetchEvents() async {
    final list = [
      // CalendarEventData(
      //   date: DateTime(2023, 2, 18),
      //   event: "Holiday",
      //   title: 'Mahashivratri',
      // ),
      CalendarEventData(
        date: DateTime(2023, 2, 27),
        startTime: DateTime(2023, 2, 27, 8, 30),
        endTime: DateTime(2023, 2, 27, 9, 30),
        event: "Class Day",
        title: 'Blockchain Development',
        description: "This class will be taken by Prof. H.K. Kalita Sir",
      ),
      CalendarEventData(
        date: DateTime(2023, 2, 27),
        startTime: DateTime(2023, 2, 27, 9, 30),
        endTime: DateTime(2023, 2, 27, 10, 30),
        event: "Class Day",
        title: 'Indian Economic Policies',
        description: "This class will be taken by Mr. Gunajit Sharma Sir",
      ),
    ];

    CalendarControllerProvider.of(context).controller.addAll(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar2(
        title: "Class Routine",
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: DayView(
          // controller: EventController(
          //   eventFilter: ,
          // ),
          eventTileBuilder: (date, events, boundry, start, end) {
            // Return your widget to display as event tile.
            return Container();
          },
          fullDayEventBuilder: (events, date) {
            // Return your widget to display full day event view.
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.white,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                width: 25.w,
                height: 5.h,
                child: Text(
                  events[0].title,
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black,
                      ),
                ),
              ),
            );
          },
          showVerticalLine: true,
          eventArranger: SideEventArranger(),
          showLiveTimeLineInAllDays: true,
          // eventTileBuilder: (dateTime, event, dateTime2, dateTime3, obj) {
          //   return Container(
          //     // width: 20.w,
          //     // height: 5.h,
          //     child: Text(
          //       "${event}",
          //       style: Theme.of(context).textTheme.headline4?.copyWith(
          //             color: Colors.black,
          //           ),
          //     ),
          //   );
          // },
          headerStyle: HeaderStyle(
            decoration: BoxDecoration(
              color: Constance.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
