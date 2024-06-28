import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/styles.dart';
import 'package:task/features/cars_info/presentation/views/widgets/buttons.dart';
import 'package:task/features/cars_info/presentation/views/widgets/car_details.dart';
import 'package:task/features/cars_info/presentation/views/widgets/car_price.dart';
import 'package:task/features/cars_info/presentation/views/widgets/contact_us.dart';
import 'package:task/features/cars_info/presentation/views/widgets/info_car_items.dart';
import 'package:task/features/cars_info/presentation/views/widgets/makfula.dart';
import 'package:task/features/home/presentation/views/widgets/cars_grid_view.dart';

class CarsInfo extends StatelessWidget {
  const CarsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final containerColor = isDarkMode ? Colors.black :Colors.white;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      'assets/Image_11.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                    bottom: 220,
                    child: ButtonsNavigation(),
                  ),
                  const Positioned(
                    bottom: -22,
                    child: InfoCarItems(),
                  ),
                ],
              ),
              const CarPrice(),
              const Makfula(),
              const SizedBox(
                height: 16,
              ),
              const CarDetails(
                title1: 'اللون الخارجي',
                title2: 'ابيض',
                
              ),
              const CarDetails(
                title1: 'اللون الداخل',
                title2: 'بيج',
              ),
              const CarDetails(
                title1: 'نوع المقعد',
                title2: 'مخمل',
              ),
              const CarDetails(
                title1: 'فتحة سقف',
                title2: 'مخمل',
              ),
              const CarDetails(
                title1: 'كاميرا خلفية',
                title2: 'مخمل',
              ),
              const CarDetails(
                title1: 'سينسر',
                title2: 'امامي-خلفي',
              ),
              const CarDetails(
                title1: 'سليندر',
                title2: '6',
              ),
              const CarDetails(
                title1: 'ناقل الحركات',
                title2: 'اوتوماتيك',
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'رنجات المنيوم 18 انش اسود وكروم - ديكور خشب + كروم - مقعد السائق كهربائي - دواسات جانبية - تحكم بالمقود مع تعديل يدوي - F1 -نظام المرتفعات - سايد بريك كهربائي - مرأة داخليك اوتو - Traction off - USB - شاحن كهربائي - 7 مقاعد الخلفي والوسطي قابل للاغلاق - جناح خلفي - عواكس خلفية - سيرفس منتظم بالوكالة',
                  style: Styles.textStyle16.copyWith(color: textColor),
                ),
              ),
              Padding(
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
                          'assets/Icons/ProfilePage_Edit.svg',
                          height: 20,
                        ),
                      ),
                      Text(
                        "يوكن للسيارات المعتمدة",
                        style: Styles.textStyle18.copyWith(color: textColor),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Text(
                        "كل السيارات",
                        style: Styles.textStyle18.copyWith(color: textColor),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              const CarsGridView(),
              const ContactUs()
            ],
          ),
        ),
      ),
    );
  }
}
