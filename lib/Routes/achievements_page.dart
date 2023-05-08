import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

import '../Widgets/Sections/achievements_section.dart';

class AchievementPage extends StatelessWidget {
  const AchievementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            //Here is the preferred height.
            preferredSize: Size.fromHeight(8.5.h),
            child: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.school),
                    text: "Alumni",
                  ),
                  Tab(
                    icon: Icon(FontAwesomeIcons.school),
                    text: "Faculty",
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              AchivementsList(index:0),
              AchivementsList(index:1),
              // Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
