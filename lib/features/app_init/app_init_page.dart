import 'package:flutter/material.dart';
import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInitPage extends StatefulWidget {
  const AppInitPage({super.key});

  @override
  State<AppInitPage> createState() => _AppInitPageState();
}

class _AppInitPageState extends State<AppInitPage> {
  @override
  void initState(){
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final prefs = await SharedPreferences.getInstance();

    final isFilled = prefs.getBool("identity_filled") ?? false;

    if(!mounted) return;

    if (!isFilled) {
      Navigator.pushReplacementNamed(context, AppRoutes.onBoarding);
    } else {
      Navigator.pushReplacementNamed(context, AppRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainBg,
      body: Center(child: CircularProgressIndicator()),
    );
  }
}