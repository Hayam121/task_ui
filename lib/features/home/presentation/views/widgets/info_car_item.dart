import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/phone_size.dart';

class InfoCarItem extends StatelessWidget {
  const InfoCarItem({
    super.key,
    required this.image,
    required this.title1,
    required this.title2,
    required this.color,
    required this.height,
    required this.width,
    required this.fontSize,
    required this.imageHeight,
  });
  final String image, title1, title2;
  final Color color;
  final double height, width, fontSize, imageHeight;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final containerColor = isDarkMode ? Colors.black : const Color(0xffF8F7FD);
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Container(
      height: height,
      width: PhoneSize.phoneWidth(context) * width,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SvgPicture.asset(
              image,
              color: color,
              height: imageHeight,
            ),
            Text(
              title1,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
            Text(
              title2,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
