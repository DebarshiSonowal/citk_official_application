import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../Models/achievement_post.dart';

class AchievementPostCard extends StatelessWidget {
  const AchievementPostCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final AchievementPost data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 1.h,
        ),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 4.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 18, // Image radius
                        backgroundImage: NetworkImage(
                          Faker().image.image(),
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                              color: Colors.black54,
                              fontSize: 9.sp,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            DateFormat.yMMMEd()
                                .format(DateTime.parse(data.date)),
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                              color: Colors.black54,
                              fontSize: 6.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuButton(
                  color: Colors.white,
                  // color: Colors.black54,
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black54,
                  ),
                  onSelected: (val) {},
                  itemBuilder: (ctx) => [
                    PopupMenuItem(
                      value: "Share",
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(
                        color: Colors.black54,
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.black54,
                            size: 12.sp,
                          ),
                          Text(
                            "Share",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                              color: Colors.black54,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: "Block",
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(
                        color: Colors.black54,
                      ),
                      child: Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.block,
                            color: Colors.black54,
                            size: 12.sp,
                          ),
                          Text(
                            "Block",
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                              color: Colors.black54,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Text(
              data.description,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.black54,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              height: 1.5.h,
            ),
            CachedNetworkImage(
              imageUrl: data.image,
              height: 25.h,
              width: 90.w,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.thumb_up,color: Colors.green,),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "36 likes",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black54,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.comment,color: Colors.black,),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "36 Comments",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black54,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Divider(
              color: Colors.black54,
              thickness: 0.6.sp,
              // height: 0.1.h,
            ),
            SizedBox(
              height: 0.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 2.w,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.thumb_up,color: Colors.green,),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Like",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black54,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.comment,color: Colors.black,),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "Comment",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black54,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 2.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}