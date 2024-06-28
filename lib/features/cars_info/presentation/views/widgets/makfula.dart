import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Makfula extends StatelessWidget {
  const Makfula({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffA85858),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/Icons/CarPage_Makfula.svg',
                height: 25,
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'مكفولة حتى 70000  كم',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
