import 'package:calendar_view/calendar_view.dart';
import 'package:citk_official_application/Constants/Constance.dart';
import 'package:citk_official_application/Routes/forms_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../Helper/Repository.dart';
import '../Helper/Storage.dart';
import '../Navigation/Navigate.dart';
import '../Widgets/Common/custom_app_bar.dart';
import '../Widgets/Common/custom_drawer.dart';
import '../Widgets/Sections/dashboard_section.dart';
import '../Widgets/dashboard_card_item.dart';
import 'achievements_page.dart';
import 'calendar_page.dart';
import 'dashboard_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE6E6E6),
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 1.w,
          vertical: 1.h,
        ),
        child: Consumer<Repository>(builder: (context, data, _) {
          return widget_change(data.currentPageIndex);
        }),
      ),
      bottomNavigationBar: Consumer<Repository>(builder: (context, data, _) {
        return BottomNavigationBar(
          onTap: (int) {
            switch (int) {
              case 0:
                Provider.of<Repository>(
                        Navigation.instance.navigatorKey.currentContext ??
                            context,
                        listen: false)
                    .setCurrentPage(0);
                break;
              case 1:
                Provider.of<Repository>(
                        Navigation.instance.navigatorKey.currentContext ??
                            context,
                        listen: false)
                    .setCurrentPage(1);
                break;
              case 2:
                Provider.of<Repository>(
                        Navigation.instance.navigatorKey.currentContext ??
                            context,
                        listen: false)
                    .setCurrentPage(2);
                break;
              case 3:
                Provider.of<Repository>(
                        Navigation.instance.navigatorKey.currentContext ??
                            context,
                        listen: false)
                    .setCurrentPage(3);
                break;
              default:
                break;
            }
          },
          unselectedItemColor: Colors.black54,
          selectedItemColor: Constance.secondaryColor,
          currentIndex: data.currentPageIndex,
          items: const [
            BottomNavigationBarItem(
              label: "Dashboard",
              icon: Icon(Icons.dashboard),
            ),
            BottomNavigationBarItem(
              label: "Academic Calendar",
              icon: Icon(Icons.calendar_today),
            ),
            BottomNavigationBarItem(
              label: "Achievements",
              icon: Icon(FontAwesomeIcons.trophy),
            ),
            BottomNavigationBarItem(
              label: "Forms",
              icon: Icon(FontAwesomeIcons.clipboard),
            ),
          ],
        );
      }),
    );
  }

  Widget widget_change(int index) {
    switch (index) {
      case 1:
        return const CalendarPage();
      case 2:
        return const AchievementPage();
      case 3:
        return const FormsPage();

      default:
        return const Dashboard_page();
    }
  }


}
