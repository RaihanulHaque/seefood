import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/image004.jpg'), fit: BoxFit.cover),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(30, 270, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Icon(Icons.search_rounded),
            Text(
              'EXPLORE.',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              'FOOD.',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              'CALORIE.',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Color.fromARGB(255, 182, 182, 53),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Eyes on the Fries',
              style: TextStyle(
                  fontFamily: 'Kalam',
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  // fontStyle: FontStyle.italic,
                  letterSpacing: 2.0),
            ),
          ],
        ),
      ),
    );
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Container(
    //       width: double.infinity,
    //       height: double.infinity,
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //             image: AssetImage('images/image017.jpg'), fit: BoxFit.cover),
    //       ),
    //       child: const Center(
    //         child: Text('Rahi 1st'),
    //       ),
    //     ),
    //   ),
    // );
  }
}
