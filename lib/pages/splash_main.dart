import 'package:project_englify/pages/indata_user.dart';
import 'package:project_englify/pages/splash1_page.dart';
import 'package:project_englify/pages/splash2_page.dart';
import 'package:project_englify/pages/splash3_page.dart';
import 'package:project_englify/pages/splash4_page.dart';
import 'package:project_englify/widgets/widget_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SplashIndicator());
}

class SplashIndicator extends StatefulWidget {
  const SplashIndicator({super.key});

  @override
  State<SplashIndicator> createState() => _SplashIndicatorState();
}

class _SplashIndicatorState extends State<SplashIndicator> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          if (_currentPage != 3)
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InDataUser()));
                },
                child: splashTextp("Skip", TextAlign.center),
              ),
            ),
          Expanded(
              child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              Splash1(),
              Splash2(),
              Splash3(),
              Splash4(),
            ],
          )),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: _currentPage == index ? 25 : 10,
                  height: 10,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: _currentPage == index
                          ? const Color(0xff8BC73F)
                          : const Color(0xff9D9D9D),
                      borderRadius: BorderRadius.circular(100)),
                );
              })),
          const SizedBox(
            height: 48,
          ),
          ElevatedButton(
            onPressed: () {
              if (_currentPage == 3) {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InDataUser()));
              } else {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff014371),
                    Color(0xff8BC73F),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 52,
                child: textTitle(_currentPage == 3 ? "Get Started" : "Continue",
                    TextAlign.center, Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
