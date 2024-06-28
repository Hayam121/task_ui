import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            if(Get.isDarkMode){
              Get.changeTheme(ThemeData.light() );
            }else{
              Get.changeTheme(ThemeData.dark() );
            }

          },
          icon: SvgPicture.asset(
            'assets/Icons/Home_menu.svg',
            height: 15,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/Icons/Home_Notification.svg',
            height: 20,
          ),
        ),
      ],
    );
  }
}
