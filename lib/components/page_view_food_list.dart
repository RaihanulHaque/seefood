import 'package:flutter/material.dart';
import 'package:seefood/models/foods.dart';
import 'package:seefood/components/food_card.dart';

class PageViewFoodList extends StatefulWidget {
  const PageViewFoodList({super.key});

  @override
  State<PageViewFoodList> createState() => _PageViewFoodListState();
}

class _PageViewFoodListState extends State<PageViewFoodList> {
  final PageController pageController = PageController(
    viewportFraction: 0.75,
  );
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: PageView.builder(
        padEnds: false,
        controller: pageController,
        itemCount: foods.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          bool active = index == currentPage;
          // print(index);
          return FoodCard(
            active: active,
            index: index,
            food: foods[index],
          );
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      int position = pageController.page!.round();
      if (currentPage != position) {
        setState(() {
          currentPage = position;
        });
      }
    });
  }
}
