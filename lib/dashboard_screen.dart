import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dashboard/bloc/theme_cubit.dart';
import 'package:flutter_dashboard/theme/dimens.dart';
import 'package:flutter_dashboard/widgets/app_bordered_icon_button.dart';
import 'package:flutter_dashboard/widgets/user_profile_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_dashboard/widgets/app_search_bar.dart';
import 'package:flutter_dashboard/widgets/app_bars/small_app_bar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SmallAppBar(
        title: 'Dashboard',
        actions: [
          AppBorderedIconButton(icon: FontAwesomeIcons.solidBell),
          UserProfileImage(),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.largePadding,
              vertical: Dimens.largePadding,
            ),
            child: AppSearchBar(),
          ),
        ),
        height: 146,
      ),
      body: Column(children: [
          
          
        ],
      ),
    );
  }
}
