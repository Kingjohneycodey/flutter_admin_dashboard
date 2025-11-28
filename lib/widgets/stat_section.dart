import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/app_scroll_bar.dart';
import 'package:flutter_dashboard/widgets/stat_card.dart';

class StatSection extends StatelessWidget {
  const StatSection({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController controller = ScrollController();
    return SizedBox(
      height: 113,
      child: AppScrollBar(
        controller: controller,
        child: ListView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: [
            StatCard(
              iconPath: 'assets/images/total-revenue.png',
              title: 'Total Revenue',
              amount: '\$50,000',
              status: StatStatus.ascending,
              percentageChange: '10%',
            ),
            StatCard(
              iconPath: 'assets/images/total-transactions.png',
              title: 'Total Transactions',
              amount: '67,902',
              status: StatStatus.ascending,
              percentageChange: '16%',
            ),
            StatCard(
              iconPath: 'assets/images/total-customers.png',
              title: 'Total Customers',
              amount: '43,456',
              status: StatStatus.descending,
              percentageChange: '0.4%',
            ),
            StatCard(
              iconPath: 'assets/images/total-products.png',
              title: 'Total Products',
              amount: '256,600',
              status: StatStatus.ascending,
              percentageChange: '16%',
            ),
          ],
        ),
      ),
    );
  }
}
