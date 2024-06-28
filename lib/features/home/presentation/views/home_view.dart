import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/buttons.dart';
import 'package:task/features/home/presentation/views/widgets/cars_grid_view.dart';
import 'package:task/features/home/presentation/views/widgets/cars_model_story_list_view.dart';
import 'package:task/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:task/features/home/presentation/views/widgets/search_text_field.dart';

class HomeView extends StatelessWidget {
const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff67687A),
        title: const CustomAppBar(),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
              child: CarsModelStoryListView(),
            ),
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Image.asset(
                'assets/Image_6.png',
                fit: BoxFit.fill,
              ),
            ),
            const SearchTextField(),
            const Buttons(),
            const SizedBox(
              height: 30,
            ),
            const CarsGridView(),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                fit: BoxFit.fill,
                'assets/Image_5.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
