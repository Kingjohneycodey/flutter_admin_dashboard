import 'package:flutter/material.dart';
import 'package:flutter_dashboard/theme/dimens.dart';
import 'package:flutter_dashboard/widgets/containers/shaded_container.dart';
import 'package:flutter_dashboard/utils/sized_context.dart';
import 'package:flutter_dashboard/widgets/data_source_viewer.dart';
import 'package:flutter_dashboard/widgets/products_sold_chart.dart';
import 'package:flutter_dashboard/widgets/visitors_growth_stat.dart';
import '../typography/app_title.dart';

class SalesOverviewSection extends StatelessWidget {
  const SalesOverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadedContainer(
      padding: EdgeInsets.all(Dimens.largePadding),
      width: context.widthPx,
      child: Column(
        spacing: Dimens.largePadding,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppTitle(text: 'Sales Overview'),
              TextButton(onPressed: () {}, child: Text('View details')),
            ],
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProductsSoldChart(constraints: constraints),
                  Column(
                    spacing: Dimens.largePadding,
                    children: [
                      DataSourceViewer(
                        color: Colors.green.shade400,
                        title: 'Shoes',
                      ),
                      DataSourceViewer(
                        color: Colors.yellow.shade400,
                        title: 'Clothes',
                      ),
                      DataSourceViewer(
                        color: Colors.pink.shade400,
                        title: 'Health care',
                      ),
                      DataSourceViewer(
                        color: Colors.purple.shade400,
                        title: 'Bag',
                      ),
                      DataSourceViewer(
                        color: Colors.orange.shade400,
                        title: 'Cosmetic',
                      ),
                      DataSourceViewer(
                        color: Colors.blue.shade400,
                        title: 'Skin care',
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
          SizedBox.shrink(),
          Divider(height: 0),
          VisitorsGrowthStat(),
        ],
      ),
    );
  }
}
