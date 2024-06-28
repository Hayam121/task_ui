import 'package:flutter/material.dart';
import 'package:task/features/home/presentation/views/widgets/cars_model_story.dart';

class CarsModelStoryListView extends StatelessWidget {
  const CarsModelStoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        CarsModelStory(
          image: 'assets/geely.png',
          carName: 'جيلي',
        ),
        CarsModelStory(
          image: 'assets/bmw.png',
          carName: 'بي ام دبليو',
        ),
        CarsModelStory(
          image: 'assets/toyota.png',
          carName: 'تويوتا',
        ),
        CarsModelStory(
          image: 'assets/geely.png',
          carName: 'جيلي',
        ),
        CarsModelStory(
          image: 'assets/bmw.png',
          carName: 'بي ام دبليو',
        ),
        CarsModelStory(
          image: 'assets/toyota.png',
          carName: 'تويوتا',
        ),
                CarsModelStory(
          image: 'assets/toyota.png',
          carName: 'تويوتا',
        ),
                CarsModelStory(
          image: 'assets/toyota.png',
          carName: 'تويوتا',
        ),
      ],
    );
  }
}
