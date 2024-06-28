import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/styles.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({
    super.key,
    required this.title1,
    required this.title2,
  });
  final String title1, title2;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final containerColor = isDarkMode ? Colors.black : const Color(0xffF8F7FD);
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        height: 30,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerColor,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16, left: 16),
              child: SvgPicture.asset(
                'assets/Icons/CarPage_Slindr.svg',
                height: 20,
              ),
            ),
            Text(
              title1,
              style: Styles.textStyle18.copyWith(color: textColor),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              title2,
              style: Styles.textStyle18.copyWith(color: textColor),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
