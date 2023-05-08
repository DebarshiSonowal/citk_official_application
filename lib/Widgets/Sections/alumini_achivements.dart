import 'package:citk_official_application/Constants/Constance.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Helper/Repository.dart';

class AluminiAchivementsSection extends StatelessWidget {
  const AluminiAchivementsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.separated(
              itemBuilder: (context, index) {
                return ListTile();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 1.h,
                );
              },
              itemCount: Constance.achievementsAlumni.length,
            ),
          ],
        ),
      ),
    );
  }
}
