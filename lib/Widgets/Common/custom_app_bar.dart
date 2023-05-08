import 'package:citk_official_application/Helper/Repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../Constants/Constance.dart';
import '../../Navigation/Navigate.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        getCurrentTitle(
            Provider.of<Repository>(context, listen: true).currentPageIndex),
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            Navigation.instance.navigate('/notification');
            // print("Show notification");
          },
          icon: Consumer<Repository>(builder: (context, data, _) {
            return Badge(
              backgroundColor: Constance.secondaryColor,
              label: Text(
                '${2}',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Constance.primaryColor, fontSize: 8.sp),
              ),
              child: const Icon(Icons.notifications),
            );
          }),
        ),
        IconButton(
          onPressed: () {
            Navigation.instance.navigate('/search', args: "");
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(7.h);

  String getCurrentTitle(int currentPageIndex) {
    switch (currentPageIndex) {
      case 1:
        return "Academic Calendar";
      case 2:
        return "Achievements";
      case 3:
        return "Forms";
      case 4:
        return "About";
      default:
        return "Dashboard";
    }
  }
}

class CustomAppBar2 extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar2({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            Navigation.instance.navigate('/notification');
            // print("Show notification");
          },
          icon: Consumer<Repository>(builder: (context, data, _) {
            return Badge(
              backgroundColor: Constance.secondaryColor,
              label: Text(
                '${2}',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Constance.primaryColor, fontSize: 8.sp),
              ),
              child: const Icon(Icons.notifications),
            );
          }),
        ),
        IconButton(
          onPressed: () {
            Navigation.instance.navigate('/search', args: "");
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(7.h);

  String getCurrentTitle(int currentPageIndex) {
    switch (currentPageIndex) {
      case 1:
        return "Academic Calendar";
      case 2:
        return "Achievements";
      case 3:
        return "Forms";
      case 4:
        return "About";
      default:
        return "Dashboard";
    }
  }
}
