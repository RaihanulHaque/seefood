import 'package:flutter/material.dart';
import 'package:seefood/screens/main/home.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            // 8,11
            image: AssetImage('assets/images/image014.png'),
            fit: BoxFit.cover),
      ),
      // child: Container(
      // alignment: const Alignment(0, 0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon(Icons.search_rounded),
          const SizedBox(
            height: 50,
          ),
          // Container(
          //   // alignment: const Alignment(0.5, 0),
          //   height: 150,
          //   width: 300,
          //   decoration: const BoxDecoration(
          //     color: Color.fromARGB(113, 255, 255, 255),
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //   ),
          //   child: Text(
          //     "Rahi",
          //     style: TextStyle(
          //       fontSize: 25,
          //     ),
          //   ),
          // ),
          const Text(
            'Compromise Calories',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Without Taste',
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          MaterialButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            color: Colors.blue.shade400,
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 14.0),
            child: const Text(
              "Get Started",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19.0,
                  color: Colors.white),
            ),
            onPressed: () async {
              // await _OnBoardInfo();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    // return const HomePage();
                    return const MyHome();
                  },
                ),
              );
            },
          ),
        ],
      ),
      // ),
    );
  }
}
