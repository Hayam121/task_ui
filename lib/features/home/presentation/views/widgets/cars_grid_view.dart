import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/car_item.dart';

class CarsGridView extends StatelessWidget {
  const CarsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 0,
          crossAxisSpacing: 2,
          crossAxisCount: 2,
          mainAxisExtent: 230),
      children: const <Widget>[
        CarItem(
          image: 'assets/Image_1.png',
        ),
        CarItem(
          image: 'assets/Image_11.png',
        ),
        CarItem(
          image: 'assets/Image_1.png',
        ),
        CarItem(
          image: 'assets/Image_11.png',
        ),
        CarItem(
          image: 'assets/Image_1.png',
        ),
        CarItem(
          image: 'assets/Image_11.png',
        ),
        CarItem(
          image: 'assets/Image_1.png',
        ),
        CarItem(
          image: 'assets/Image_11.png',
        ),
      ],
    );
  }
}
