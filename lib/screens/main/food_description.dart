import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:seefood/models/foods.dart';
// import 'package:seefood/components/food_card.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen(
      {Key? key, this.name, this.imagePath, this.description})
      : super(key: key);
  final dynamic name, imagePath, description;

  @override
  Widget build(BuildContext context) {
    // final str = (name);
    // print(str);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/$imagePath'),
            ),
            buttonArrow(context),
            scroll(context)
          ],
        ),
      ),
    );
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 14, 0, 0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          // padding: const EdgeInsets.only(left: 0),
          clipBehavior: Clip.hardEdge,
          height: 50,
          width: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
            child: Container(
                height: 50,
                width: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 30,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }

  scroll(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.45,
      maxChildSize: 1.0,
      minChildSize: 0.45,
      builder: ((context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Description',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(fontSize: 20, color: Colors.blueGrey.shade400),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
