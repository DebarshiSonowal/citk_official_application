import 'package:flutter/material.dart';

import '../../Constants/Constance.dart';
import '../dashboard_card_item.dart';

class DashboardSection extends StatelessWidget {
  const DashboardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      crossAxisSpacing: 3.0,
      mainAxisSpacing: 7.0,
      childAspectRatio: 6/5,
      children: List.generate(Constance.dashboardItems.length, (index) {
        var item = Constance.dashboardItems[index];
        return DashboardCardItem(item: item);
      }),
    );
  }
}
