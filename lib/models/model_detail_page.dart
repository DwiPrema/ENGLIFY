import 'package:project_englify/core/constant/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:project_englify/models/model_table.dart';
import 'package:project_englify/services/vocabulary_loader.dart';

class ModelDetailPage extends StatelessWidget {
  final String path;
  const ModelDetailPage({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Vocabulary>>(
        future: VocabularyLoader.load(path),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return textTitle(
                "Data Tidak Ditemukan", TextAlign.center, AppColors.black);
          }

          final list = snapshot.data!;

          return ListView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (context, index) {
              final item = list[index];
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.paragraph2, width: 1),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.secBg.withValues(alpha: 0.4),
                      offset: const Offset(0, 3),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        item.indonesia,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontFamily: "JosefinSans",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            item.english,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            item.pronunciation,
                            textAlign: TextAlign.end,
                            style: const TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 13,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
