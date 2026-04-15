import 'package:barberbookingapp/core/gen/assets.gen.dart';
import 'package:barberbookingapp/core/gen/fonts.gen.dart';
import 'package:barberbookingapp/core/theme/colors.dart';
import 'package:barberbookingapp/core/theme/dimens.dart';
import 'package:barberbookingapp/core/widgets/app_elevated_button.dart';
import 'package:barberbookingapp/core/widgets/app_light_text.dart';
import 'package:barberbookingapp/core/widgets/app_list_tile.dart';
import 'package:barberbookingapp/core/widgets/user_profile_image_widget.dart';
import 'package:flutter/cupertino.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: Dimens.largePadding,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          UserProfileImageWidget(width: 150, height: 150),
          Column(
            spacing: Dimens.padding,
            children: [
              Text(
                'Omkar Patil',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: FontFamily.aksharBold,
                ),
              ),
              AppLightText('OmkarPatil@gmail.com'),
            ],
          ),
          AppElevatedButton(title: 'Edit profile', onPressed: () {}),
          AppListTile(
            onTap: () {},
            title: 'Payment method',
            leadingIconPath: Assets.icons.cardPos,
          ),
          AppListTile(
            onTap: () {},
            title: 'Language',
            leadingIconPath: Assets.icons.language,
          ),
          AppListTile(
            onTap: () {},
            title: 'Notification',
            leadingIconPath: Assets.icons.notification,
            trailing: Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                value: true,
                onChanged: (final value) {},
                activeTrackColor: AppColors.primaryColor,
              ),
            ),
          ),
          AppListTile(
            onTap: () {},
            title: 'Dark mode',
            leadingIconPath: Assets.icons.moon,
            trailing: Transform.scale(
              scale: 0.7,
              child: CupertinoSwitch(
                value: false,
                onChanged: (final value) {},
                activeTrackColor: AppColors.primaryColor,
              ),
            ),
          ),
          AppListTile(
            onTap: () {},
            title: 'Help and support',
            leadingIconPath: Assets.icons.info,
          ),
          AppListTile(
            onTap: () {},
            title: 'Log out',
            leadingIconPath: Assets.icons.logout,
          ),
        ],
      ),
    );
  }
}
