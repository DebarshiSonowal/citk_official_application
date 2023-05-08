import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../Models/achievement_post.dart';
import 'achievement_post_card.dart';

class AchivementsList extends StatelessWidget {
  const AchivementsList({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            AchievementPost data = AchievementPost(
                Faker().person.name(),
                Faker().company.name(),
                "${Faker().address.city()}, ${Faker().address.state()}, ${Faker().address.country()}",
                Faker().image.image(),
                Faker().date.dateTime().toString());
            return AchievementPostCard(data: data);
          }),
    );
  }
}


