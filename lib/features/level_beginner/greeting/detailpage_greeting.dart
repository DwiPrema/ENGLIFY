import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:project_englify/models/model_table.dart';
import 'package:project_englify/services/vocabulary_loader.dart';

class DetailGreetingPage extends StatelessWidget {
  const DetailGreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header
              cardHeader("Greeting", "Pelajari salam dalam bahasa inggris"),
              const SizedBox(height: 30),

              // Bagian Tabel
              FutureBuilder<List<Vocabulary>>(
                  future: VocabularyLoader.load("assets/data/greeting.json"),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return textTitle("Data Tidak Ditemukan", TextAlign.center,
                          AppColors.black);
                    }

                    final greetingList = snapshot.data!;

                    return ListView.builder(
                      shrinkWrap: true,
                      physics:
                          const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                      itemCount: greetingList.length,
                      itemBuilder: (context, index) {
                        final fruit = greetingList[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.shade300, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade100,
                                offset: const Offset(0, 2),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                fruit.indonesia,
                                style: const TextStyle(
                                  fontFamily: "JosefinSans",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    fruit.english,
                                    style: const TextStyle(
                                      fontFamily: "JosefinSans",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    fruit.pronunciation,
                                    style: const TextStyle(
                                      fontFamily: "JosefinSans",
                                      fontSize: 13,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
