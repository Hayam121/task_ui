import 'package:flutter/material.dart';
import 'package:task/core/styles.dart';

class CarPrice extends StatelessWidget {
  const CarPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 30,
        top: 15,
        bottom: 15,
      ),
      child: Row(
        children: [
          Text(
            'يوكن بحالة جيدة',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
            ),
          ),
          const Spacer(),
          const Text(
            '8,700',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'د.ك',
            style: Styles.textStyle16,
          ),
        ],
      ),
    );
  }
}
