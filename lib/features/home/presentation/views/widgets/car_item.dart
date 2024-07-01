import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/features/cars_info/presentation/views/cars_info.dart';
import 'package:task/features/home/presentation/views/widgets/info_car_item.dart';

class CarItem extends StatelessWidget {
  const CarItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final containerColor = isDarkMode ? Colors.black : const Color(0xffD7DCE7);
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(CarsInfo());
          },
          child: SizedBox(
            child: Column(
              children: [
                Container(
                  color: containerColor,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'جي ام سي |',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      Text(
                        ' يوكن |',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                      Text(
                        ' الفئة الرابعة',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: PhoneSize.phoneHeight(context)*0.2,
                  width: double.infinity,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 20,
          child: Row(
            children: [
              InfoCarItem(
                imageHeight: 15,
                fontSize: 10,
                image: 'assets/Icons/Home_ad1.svg',
                title1: 'السعر',
                title2: '12,700',
                color: Colors.blue,
                height: 75,
                width: 0.1234,
              ),
              InfoCarItem(
                imageHeight: 15,
                fontSize: 9,
                image: 'assets/Icons/Home_Ad2.svg',
                title1: 'سنةالصنع',
                title2: '2019',
                color: Colors.green,
                height: 75,
                width: 0.1235,
              ),
              InfoCarItem(
                imageHeight: 15,
                fontSize: 10,
                image: 'assets/Icons/Home_Ad3.svg',
                title1: 'كم',
                title2: '20000',
                color: Colors.amber,
                height: 75,
                width: 0.1235,
              ),
              InfoCarItem(
                imageHeight: 15,
                fontSize: 10,
                image: 'assets/Icons/Home_Ad4.svg',
                title1: 'مكفولة لـ',
                title2: '2021',
                color: Colors.purple,
                height: 75,
                width: 0.1235,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
