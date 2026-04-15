import 'package:barberbookingapp/core/gen/assets.gen.dart';
import 'package:barberbookingapp/core/gen/fonts.gen.dart';
import 'package:barberbookingapp/core/theme/dimens.dart';
import 'package:barberbookingapp/core/widgets/app_bordered_icon_button.dart';
import 'package:barberbookingapp/core/widgets/app_svg_viewer.dart';
import 'package:barberbookingapp/core/widgets/user_profile_image_widget.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimens.padding),
      child: AppBar(
        actions: [AppBorderedIconButton(iconPath: Assets.icons.notification)],
        title: Column(
          spacing: Dimens.padding,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Omkar Patil',
              style: TextStyle(
                fontFamily: FontFamily.aksharLight,
                fontSize: 16,
              ),
            ),
            Row(
              spacing: Dimens.padding,
              children: [
                AppSvgViewer(Assets.icons.location, width: 18),
                Text(
                  'Ulhasnagar',
                  style: TextStyle(
                    fontFamily: FontFamily.aksharMedium,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        leading: UserProfileImageWidget(),
        leadingWidth: 85,
        titleSpacing: Dimens.padding,
        actionsPadding: EdgeInsets.symmetric(horizontal: Dimens.largePadding),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + 16.0);
}
