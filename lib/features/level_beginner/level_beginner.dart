import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/features/level_beginner/data/beginner_data_menu.dart';

class BeginnerPage extends StatelessWidget {
  const BeginnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.primary,
                      AppColors.secondary,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textTitle("Beginner (A1)", TextAlign.left, AppColors.black),
                    const SizedBox(height: 8),
                    labelText(
                        "Pada level ini, pengguna akan belajar kosakata dan kalimat sederhana yang sering digunakan dalam kehidupan sehari-hari.",
                        const Color(0xff242424)),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // --- JUDUL ---
              const Center(
                child: Text(
                  'Belajar Sekarang !',
                  style: TextStyle(
                    fontFamily: 'JosefinSans',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.black,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              LayoutBuilder(
                builder: (context, constraints) {
                  int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.15, // 155/135
                    ),
                    itemCount: beginnerMenuItems.length,
                    itemBuilder: (context, index) {
                      final item = beginnerMenuItems[index];
                      return InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.pushNamed(context, item["route"] as String);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.secondary,
                                Color(0xFF1F4C6B),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black.withValues(alpha: 0.15),
                                blurRadius: 6,
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      item['title']!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      item['subtitle']!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.primary,
                                  ),
                                  child: const Icon(Icons.arrow_forward,
                                      size: 14, color: AppColors.secondary),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
