import 'package:flutter/material.dart';
import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/home/home_screen.dart';
import 'package:project_englify/features/home/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  Widget _navItem(
      {required IconData icon, required String label, required int index}) {
    final bool isActive = _currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color:
                isActive ? AppColors.black : const Color.fromARGB(120, 0, 0, 0),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            label,
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 8,
              color: isActive
                  ? AppColors.black
                  : const Color.fromARGB(120, 0, 0, 0),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secBg,
        body: Stack(
          children: [
            IndexedStack(
              index: _currentIndex,
              children: const [
                HomeScreen(),
                ProfileScreen(),
              ],
            ),
            Positioned(
              left: 32,
              right: 32,
              bottom: 16,
              child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainBg,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(100, 38, 67, 87),
                          blurRadius: 10,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _navItem(
                            icon: Icons.home_rounded, label: "Home", index: 0),
                        _navItem(
                            icon: Icons.person, label: "Profile", index: 1),
                      ],
                    ),
                  )),
            )
          ],
        ));
  }
}
