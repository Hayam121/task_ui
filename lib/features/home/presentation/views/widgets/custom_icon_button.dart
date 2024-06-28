import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: IconButton(
        onPressed: () {},
        icon: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        style: IconButton.styleFrom(
          fixedSize: const Size(90, 20),
          backgroundColor: const Color(0xff42445B),
        ),
      ),
    );
  }
}
