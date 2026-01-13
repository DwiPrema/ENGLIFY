import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/identity_user/identity_user.dart';
import 'package:project_englify/features/onboarding/onboarding_page1.dart';
import 'package:project_englify/features/onboarding/onboarding_page2.dart';
import 'package:project_englify/features/onboarding/onboarding_page3.dart';
import 'package:project_englify/features/onboarding/onboarding_page4.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class MainOnboarding extends StatefulWidget {
  const MainOnboarding({super.key});

  @override
  State<MainOnboarding> createState() => _MainOnboardingState();
}

class _MainOnboardingState extends State<MainOnboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
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
                    child: Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                        horizontal: 24,
                      ),
                      child: splashTextp("Skip", TextAlign.center),
                    ),
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
                              ? AppColors.primary
                              : AppColors.black.withAlpha(110),
                          borderRadius: BorderRadius.circular(100)),
                    );
                  })),
              const SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 24),
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentPage == 3) {
                      Navigator.pushNamed(context, AppRoutes.inDataUserRoute);
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
                          AppColors.secondary,
                          AppColors.primary,
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
                      child: textTitle(
                          _currentPage == 3 ? "Get Started" : "Continue",
                          TextAlign.center,
                          AppColors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
