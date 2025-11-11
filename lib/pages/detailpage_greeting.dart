import 'package:englify_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:englify_project/models/model_table.dart';

void main() {
  runApp(const DetailGreetingPage());
}

class DetailGreetingPage extends StatelessWidget {
  const DetailGreetingPage({super.key});

  final List<Greeting> greetingList = const [
    Greeting("Halo", "Hello", "→ he-lo"),
    Greeting("Hai", "Hi", "→ hai"),
    Greeting("Selamat pagi", "Good morning", "→ gud mor-ning"),
    Greeting("Selamat siang", "Good afternoon", "→ gud af-ter-nun"),
    Greeting("Selamat sore", "Good evening", "→ gud iv-ning"),
    Greeting("Selamat malam", "Good night", "→ gud nait"),
    Greeting("Apa kabar?", "How are you?", "→ hau ar yu"),
    Greeting("Senang bertemu denganmu", "Nice to meet you", "→ nais tu mit yu"),
    Greeting("Senang bertemu lagi", "Nice to see you again",
        "→ nais tu si yu a-gen"),
    Greeting("Lama tak jumpa", "Long time no see", "→ long taim no si"),
    Greeting("Selamat datang", "Welcome", "→ wel-kam"),
    Greeting("Selamat tinggal", "Goodbye", "→ gud-bai"),
    Greeting("Sampai jumpa", "See you later", "→ si yu le-ter"),
    Greeting("Sampai besok", "See you tomorrow", "→ si yu to-mo-row"),
    Greeting("Sampai minggu depan", "See you next week", "→ si yu nekst wik"),
    Greeting("Hati-hati di jalan", "Take care", "→ teik ker"),
    Greeting("Selamat datang kembali", "Welcome back", "→ wel-kam bek"),
    Greeting("Selamat bersenang-senang", "Have fun", "→ hev fan"),
    Greeting(
        "Selamat berlibur", "Have a nice holiday", "→ hev e nais ho-li-dei"),
    Greeting("Selamat beristirahat", "Have a rest", "→ hev e rest"),
    Greeting(
        "Semoga harimu menyenangkan", "Have a nice day", "→ hev e nais dei"),
    Greeting("Senang berbicara denganmu", "Nice talking to you",
        "→ nais tol-king tu yu"),
    Greeting("Apa kabar pagi ini?", "How are you this morning?",
        "→ hau ar yu dis mor-ning"),
    Greeting("Bagaimana harimu?", "How’s your day?", "→ haus yor dei"),
    Greeting(
        "Apa yang kamu lakukan?", "What are you doing?", "→ wot ar yu du-ing"),
    Greeting("Senang melihatmu!", "Glad to see you!", "→ gled tu si yu"),
    Greeting("Selamat ulang tahun!", "Happy birthday!", "→ he-pi bert-dei"),
    Greeting("Selamat!", "Congratulations!", "→ kong-gre-tyu-lei-shen"),
    Greeting("Selamat tahun baru!", "Happy New Year!", "→ he-pi nyu yir"),
    Greeting("Selamat Natal!", "Merry Christmas!", "→ me-ri kris-mes"),
    Greeting("Selamat Paskah!", "Happy Easter!", "→ he-pi is-ter"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
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
                ListView.builder(
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // 🇮🇩 Kolom Bahasa Indonesia
                          Expanded(
                            flex: 1,
                            child: Text(
                              fruit.indonesia,
                              style: const TextStyle(
                                fontFamily: "JosefinSans",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              softWrap:
                                  true, // memungkinkan teks turun ke baris baru
                            ),
                          ),

                          const SizedBox(width: 10),

                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  fruit.english,
                                  style: const TextStyle(
                                    fontFamily: "JosefinSans",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                  softWrap: true,
                                  textAlign: TextAlign.right,
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  fruit.pronunciation,
                                  style: const TextStyle(
                                    fontFamily: "JosefinSans",
                                    fontSize: 13,
                                    color: Colors.black87,
                                  ),
                                  softWrap: true,
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
