import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/phone_size.dart';

class ButtonsNavigation extends StatelessWidget {
  const ButtonsNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: const Size(20, 20),
            backgroundColor: const Color(0xffE1DDDC),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/Icons/BookPage_Cancel.svg',
            height: 15,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: PhoneSize.phoneWidth(context) * 0.5,
        ),
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: const Size(20, 20),
            backgroundColor: const Color(0xffE1DDDC),
          ),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/Icons/CarPage_Share.svg',
            height: 15,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          style: IconButton.styleFrom(
            fixedSize: const Size(20, 20),
            backgroundColor: const Color(0xffE1DDDC),
          ),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/Icons/CarPage_Fav.svg',
            height: 15,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
