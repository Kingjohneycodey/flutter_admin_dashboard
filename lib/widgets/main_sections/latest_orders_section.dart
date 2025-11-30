import 'package:flutter/material.dart';
import 'package:flutter_dashboard/theme/dimens.dart';
import 'package:flutter_dashboard/widgets/containers/shaded_container.dart';
import 'package:flutter_dashboard/widgets/orders_data_table.dart';
import 'package:flutter_dashboard/widgets/typography/app_title.dart';

class LatestOrdersSection extends StatelessWidget {
  const LatestOrdersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadedContainer(
      padding: EdgeInsets.all(Dimens.largePadding),
      child: Column(
        spacing: Dimens.largePadding,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTitle(text: 'Latest Orders'),
              TextButton(onPressed: () {}, child: Text('View details')),
            ],
          ),
          OrdersDataTable(),
        ],
      ),
    );
  }
}
