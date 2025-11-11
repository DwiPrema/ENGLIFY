<<<<<<< HEAD
import 'package:englify_project/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class BeginnerPage extends StatelessWidget {
  const BeginnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // data untuk grid
    final List<Map<String, dynamic>> items = [
      {'title': 'Alphabet', 'subtitle': '(Abjad)', 'route': '/alphabetPage'},
      {'title': 'Number', 'subtitle': '(Angka)', 'route': '/numberPage'},
      {'title': 'Fruit', 'subtitle': '(Buah)', 'route': '/fruitPage'},
      {'title': 'Animal', 'subtitle': '(Hewan)', 'route': '/animalPage'},
      {'title': 'Greeting', 'subtitle': '(Salam)', 'route': '/greetingPage'},
      {'title': 'Noun', 'subtitle': '(Kata Benda)', 'route': '/nounPage'},
      {
        'title': 'Adjective',
        'subtitle': '(Kata Sifat)',
        'route': '/adjectivePage'
      },
      {'title': 'Verb', 'subtitle': '(Kata Kerja)', 'route': '/verbPage'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- CARD LEVEL ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB4EC51),
                      Color(0xff1F4C6B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textTitle("Beginner (A1)", TextAlign.left,
                        const Color(0xff000000)),
                    const SizedBox(height: 8),
                    lightText(
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
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // --- GRID ITEM ---
              LayoutBuilder(
                builder: (context, constraints) {
                  // responsive kolom: hp 2, tablet 3
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
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.pushNamed(context, item['route']);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF00264D),
                                Color(0xFF1F4C6B),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 6,
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              // teks di tengah
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
                                        color: Colors.white,
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

                              // tombol panah kanan bawah
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF9EEA4A),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    size: 14,
                                    color: Color(0xFF00264D),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
=======
import 'package:englify_project/widgets/widget_text.dart';
import 'package:flutter/material.dart';

class BeginnerPage extends StatelessWidget {
  const BeginnerPage({super.key});

  @override
  Widget build(BuildContext context) {
    // data untuk grid
    final List<Map<String, dynamic>> items = [
      {'title': 'Alphabet', 'subtitle': '(Abjad)', 'route': '/alphabetPage'},
      {'title': 'Number', 'subtitle': '(Angka)', 'route': '/numberPage'},
      {'title': 'Fruit', 'subtitle': '(Buah)', 'route': '/fruitPage'},
      {'title': 'Animal', 'subtitle': '(Hewan)', 'route': '/animalPage'},
      {'title': 'Greeting', 'subtitle': '(Salam)', 'route': '/greetingPage'},
      {'title': 'Noun', 'subtitle': '(Kata Benda)', 'route': '/nounPage'},
      {
        'title': 'Adjective',
        'subtitle': '(Kata Sifat)',
        'route': '/adjectivePage'
      },
      {'title': 'Verb', 'subtitle': '(Kata Kerja)', 'route': '/verbPage'},
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- CARD LEVEL ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFFB4EC51),
                      Color(0xff1F4C6B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textTitle("Beginner (A1)", TextAlign.left,
                        const Color(0xff000000)),
                    const SizedBox(height: 8),
                    lightText(
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
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // --- GRID ITEM ---
              LayoutBuilder(
                builder: (context, constraints) {
                  // responsive kolom: hp 2, tablet 3
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
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.pushNamed(context, item['route']);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xFF00264D),
                                Color(0xFF1F4C6B),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 6,
                                offset: const Offset(2, 3),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              // teks di tengah
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
                                        color: Colors.white,
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

                              // tombol panah kanan bawah
                              Positioned(
                                bottom: 10,
                                right: 10,
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF9EEA4A),
                                  ),
                                  child: const Icon(
                                    Icons.arrow_forward,
                                    size: 14,
                                    color: Color(0xFF00264D),
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
>>>>>>> 7d3a9635dfac6d07abaae3400e213fe01f11448a
