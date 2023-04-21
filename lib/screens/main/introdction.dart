import 'package:flutter/material.dart';
import 'package:seefood/main.dart';
import 'package:seefood/screens/intro/one.dart';
import 'package:seefood/screens/intro/two.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Controller to keep track of which page we are on
  final PageController _controller = PageController();
  // Keep track on first and last Page
  bool onLastPage = false;

  Future _OnBoardInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    isViewed = await prefs.setBool('isViewed', true);
  }

  @override
  void initState() {
    super.initState();
    _OnBoardInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page View
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 1);
              });
            },
            children: const [IntroPage1(), IntroPage2()],
          ),
          Container(
            alignment: const Alignment(0, 0.72),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: const ExpandingDotsEffect(
                dotColor: Color.fromARGB(255, 83, 119, 238),
                // activeDotColor: Color.fromARGB(255, 233, 91, 35),
                activeDotColor: Colors.green,
                dotHeight: 10.0,
                dotWidth: 10.0,
                radius: 10.0,
              ),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0.9),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              // child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // onLastPage

                  if (onLastPage)
                    ...[]
                  else ...[
                    GestureDetector(
                      child: MaterialButton(
                        shape: const CircleBorder(),
                        // color: Colors.lightGreen[600],
                        // padding: const EdgeInsets.all(5),
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ]
                ],
              ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
