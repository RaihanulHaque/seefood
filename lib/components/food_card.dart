import 'package:flutter/material.dart';
import 'package:seefood/models/foods.dart';
import 'package:seefood/screens/main/food_description.dart';

class FoodCard extends StatelessWidget {
  const FoodCard(
      {Key? key, required this.active, required this.index, required this.food})
      : super(key: key);

  final bool active;
  final int index;
  final Food food;

  @override
  Widget build(BuildContext context) {
    // final double blur = active ? 16 : 0;
    // final double offset = active ? 4 : 0;
    final double top = active ? 0 : 46;
    // print(food);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailsScreen(
              name: food.foodName,
              imagePath: food.foodImage,
              description: food.description,
            ),
          ),
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutQuint,
        margin: EdgeInsets.only(
          top: top,
          bottom: 0,
          right: 15.5,
          left: active ? 32.5 : 0,
        ),
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(32),
        //   color: food!.startColor!,
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.black87.withOpacity(0.1),
        //       blurRadius: blur,
        //       offset: Offset(0, offset),
        //     )
        //   ],
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //     image: AssetImage('assets/images/${food!.foodImage}'),
        //   ),
        // ),
        // child: Stack(
        //   children: [
        //     Container(
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(32),
        //           gradient: LinearGradient(
        //               colors: [
        //                 food!.startColor!,
        //                 food!.endColor!.withOpacity(0.2),
        //               ],
        //               begin: Alignment.bottomRight,
        //               end: Alignment.topLeft,
        //               tileMode: TileMode.clamp,
        //               stops: const [0.25, 0.6])),
        //     ),
        //     Positioned(
        //       bottom: 0,
        //       left: 0,
        //       right: 0,
        //       child: Container(
        //         padding: const EdgeInsets.only(
        //           left: 24,
        //           right: 16,
        //           top: 10,
        //         ),
        //         height: 87,
        //         decoration: BoxDecoration(
        //             color: food!.startColor,
        //             borderRadius: const BorderRadius.only(
        //               bottomLeft: Radius.circular(32),
        //               bottomRight: Radius.circular(32),
        //             )),
        //         child: Text(
        //           food!.foodName,
        //           overflow: TextOverflow.ellipsis,
        //           maxLines: 2,
        //           style: const TextStyle(
        //             fontSize: 18,
        //             fontWeight: FontWeight.w600,
        //             color: Colors.white,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        child: Container(
          alignment: const Alignment(-0.7, 0.8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32.0),
            image: DecorationImage(
              image: AssetImage('assets/images/${food.foodImage}'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            // color: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              // color: Color.fromARGB(160, 87, 189, 90),
              gradient: LinearGradient(
                colors: [
                  // Color.fromARGB(146, 250, 128, 209),
                  Color.fromARGB(146, 44, 177, 238),
                  Color.fromARGB(82, 102, 6, 6)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Text(
              food.foodName,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
