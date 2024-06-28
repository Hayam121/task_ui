import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/info_car_item.dart';

class InfoCarItems extends StatelessWidget {
  const InfoCarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        InfoCarItem(
          imageHeight: 25,
          fontSize: 16,
          image: 'assets/Icons/CarPage_Slindr.svg',
          title1: 'المحرك/سلندر',
          title2: '6',
          color: Colors.blue,
          height: 100,
          width: 0.25,
        ),
        SizedBox(
          width: 10,
        ),
        InfoCarItem(
          imageHeight: 25,
          fontSize: 16,
          image: 'assets/Icons/Home_Ad2.svg',
          title1: 'سنة الصنع',
          title2: '2019',
          color: Colors.green,
          height: 100,
          width: 0.25,
        ),
        SizedBox(
          width: 10,
        ),
        InfoCarItem(
          imageHeight: 25,
          fontSize: 16,
          image: 'assets/Icons/Home_Ad3.svg',
          title1: 'كم',
          title2: '20000',
          color: Colors.amber,
          height: 100,
          width: 0.25,
        ),
      ],
    );
  }
}
