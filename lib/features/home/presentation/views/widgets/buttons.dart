import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/custom_icon_button.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          title: 'اسيوي',
        ),
        CustomIconButton(
          title: 'اوروبي',
        ),
        CustomIconButton(
          title: 'امريكي',
        ),
      ],
    );
  }
}
