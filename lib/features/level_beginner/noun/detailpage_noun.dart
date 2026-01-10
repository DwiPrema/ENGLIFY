import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_detail_page.dart';

class DetailNounPage extends StatelessWidget {
  const DetailNounPage({super.key});

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
              cardHeader(
                  "Noun", "Pelajari nama nama hewan dalam bahasa inggris"),
              const SizedBox(height: 30),

              // Bagian Tabel
              const ModelDetailPage(path: "assets/data/noun.json")
            ],
          ),
        ),
      ),
    );
  }
}
