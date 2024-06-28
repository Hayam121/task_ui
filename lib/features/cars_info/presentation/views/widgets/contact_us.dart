import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: const Size(25, 25),
              backgroundColor: const Color(0xffE8F3EA),
            ),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/Icons/CarPage_Call.svg',
              height: 25,
              color: Colors.green,
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: const Size(25, 25),
              backgroundColor: const Color(0xffEFEEFE),
            ),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/Icons/CarPage_ChatByWHatsapp.svg',
              height: 25,
              color: Colors.purple,
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: const Size(130, 25),
              backgroundColor: const Color(0xff4F536E),
            ),
            onPressed: () {},
            icon: Row(
              children: [
                SvgPicture.asset(
                  'assets/Icons/CarPage_Location.svg',
                  height: 25,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'موقع السيارة',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(
              fixedSize: const Size(130, 25),
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            icon: Row(
              children: [
                SvgPicture.asset(
                  'assets/Icons/CarPage_Book.svg',
                  height: 25,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'احجز السيارة',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
