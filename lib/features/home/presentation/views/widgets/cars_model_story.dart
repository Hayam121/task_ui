import 'package:flutter/material.dart';
import 'package:task/core/styles.dart';

class CarsModelStory extends StatelessWidget {
  const CarsModelStory({
    super.key,
    required this.image,
    required this.carName,
  });
  final String image;
  final String carName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            carName,
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}
