import 'package:calendar_view/calendar_view.dart';
import 'package:citk_official_application/Constants/Constance.dart';
import 'package:citk_official_application/Navigation/Navigate.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      // chil
      child: MonthView(
        // controller: EventController(
        //
        // ),
        // borderColor: Colors.black45,
        onCellTap: (events, date) {
          if (events.isEmpty) {
            Dialogs.materialDialog(
                msg: 'Today is ${DateFormat("dd MMM,yyyy").format(date)}',
                title: "Working day",
                titleStyle: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                    ),
                msgStyle: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black54,
                    ),
                color: Colors.white,
                context: context,
                actions: [
                  IconsOutlineButton(
                    onPressed: () {
                      Navigation.instance.goBack();
                    },
                    text: 'Cancel',
                    iconData: Icons.cancel_outlined,
                    textStyle: const TextStyle(color: Colors.grey),
                    iconColor: Colors.grey,
                  ),
                ]);
          } else {
            Dialogs.materialDialog(
                msg: 'Today is ${events[0].title}',
                title: events[0].title,
                titleStyle: Theme.of(context).textTheme.headline4!.copyWith(
                      color: Colors.black,
                    ),
                msgStyle: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.black54,
                    ),
                color: Colors.white,
                context: context,
                actions: [
                  IconsOutlineButton(
                    onPressed: () {
                      Navigation.instance.goBack();
                    },
                    text: 'Cancel',
                    iconData: Icons.cancel_outlined,
                    textStyle: const TextStyle(color: Colors.grey),
                    iconColor: Colors.grey,
                  ),
                ]);
          }
        },
        onEventTap: (event, date) {},
        headerStyle: const HeaderStyle(
          decoration: BoxDecoration(
            color: Constance.primaryColor,
          ),
        ),
      ),
    );
  }
}
