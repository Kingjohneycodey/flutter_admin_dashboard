import 'dart:developer';

import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/theme/colors.dart';
import 'package:flutter_dashboard/theme/dimens.dart';
import 'package:flutter_dashboard/widgets/app_drop_down_button.dart';
import 'package:flutter_dashboard/widgets/containers/shaded_container.dart';
import 'package:flutter_dashboard/widgets/country_growth_progress_bar.dart';
import 'package:flutter_dashboard/widgets/typography/app_subtitle.dart';
import 'package:flutter_dashboard/widgets/typography/app_title.dart';

class CustomerGrowthSection extends StatelessWidget {
  const CustomerGrowthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadedContainer(
      padding: EdgeInsets.all(Dimens.largePadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: Dimens.padding,
                children: [
                  AppTitle(text: 'Customer Growth'),
                  AppSubtitle(text: 'Based on countries'),
                ],
              ),
              AppDropDownButton(
                title: 'Country',
                color: AppColors.primaryColor,
                onTap: () {},
              ),
            ],
          ),

          SizedBox(
            height: 220,
            child: SimpleMap(
              countryBorder: CountryBorder(color: Colors.grey.shade400),
              defaultColor: Colors.grey.shade400,
              instructions: SMapWorld.instructions,
              callback: (id, name, tabDetails) {
                log('id: $id, name: $name, tabDetails: $tabDetails');
              },
              colors: SMapWorldColors(
                rU: AppColors.primaryColor,
                uS: AppColors.primaryColor,
                cA: AppColors.primaryColor,
              ).toMap(),
            ),
          ),
          SizedBox(height: Dimens.smallPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                spacing: Dimens.veryLargePadding,
                children: [
                  CountryGrowthProgressBar(
                    imagePath: 'assets/images/Flag-USA.png',
                    title: 'United States',
                    progress: 0.6,
                  ),
                  CountryGrowthProgressBar(
                    imagePath: 'assets/images/Flag-UK.png',
                    title: 'United kingdom',
                    progress: 0.45,
                  ),
                ],
              ),
              Column(
                spacing: Dimens.veryLargePadding,
                children: [
                  CountryGrowthProgressBar(
                    imagePath: 'assets/images/Flag-TR.png',
                    title: 'Türkiye',
                    progress: 0.2,
                  ),
                  CountryGrowthProgressBar(
                    imagePath: 'assets/images/Flag-AG.png',
                    title: 'Argentina',
                    progress: 0.4,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Dimens.padding),
        ],
      ),
    );
  }
}
