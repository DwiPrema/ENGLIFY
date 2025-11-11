<<<<<<< HEAD
import 'package:englify_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:englify_project/models/model_table.dart';

void main() {
  runApp(const DetailVerbPage());
}

class DetailVerbPage extends StatelessWidget {
  const DetailVerbPage({super.key});

  final List<Verb> verbList = const [
    Verb("Pergi", "Go", "ɡəʊ → gou"),
    Verb("Datang", "Come", "kʌm → kam"),
    Verb("Melihat", "See", "siː → si"),
    Verb("Mendengar", "Hear", "hɪə → hir"),
    Verb("Berbicara", "Speak", "spiːk → spik"),
    Verb("Makan", "Eat", "iːt → it"),
    Verb("Minum", "Drink", "drɪŋk → dringk"),
    Verb("Tidur", "Sleep", "sliːp → slip"),
    Verb("Bangun", "Wake up", "weɪk ʌp → weik ap"),
    Verb("Berlari", "Run", "rʌn → ran"),
    Verb("Berjalan", "Walk", "wɔːk → wok"),
    Verb("Bekerja", "Work", "wɜːk → werk"),
    Verb("Belajar", "Study", "ˈstʌd.i → sta-di"),
    Verb("Mengajar", "Teach", "tiːtʃ → tiic"),
    Verb("Menulis", "Write", "raɪt → rait"),
    Verb("Membaca", "Read", "riːd → rid"),
    Verb("Mendengarkan", "Listen", "ˈlɪs.ən → li-sen"),
    Verb("Bermain", "Play", "pleɪ → plei"),
    Verb("Berenang", "Swim", "swɪm → swim"),
    Verb("Memandikan", "Bathe", "beɪð → beid"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Membeli", "Buy", "baɪ → bai"),
    Verb("Menjual", "Sell", "sel → sel"),
    Verb("Membawa", "Bring", "brɪŋ → bring"),
    Verb("Membuat", "Make", "meɪk → meik"),
    Verb("Mengambil", "Take", "teɪk → teik"),
    Verb("Memberi", "Give", "ɡɪv → giv"),
    Verb("Mendapatkan", "Get", "ɡet → get"),
    Verb("Memegang", "Hold", "həʊld → hold"),
    Verb("Menemukan", "Find", "faɪnd → faind"),
    Verb("Menunjukkan", "Show", "ʃəʊ → show"),
    Verb("Menulis", "Write", "raɪt → rait"),
    Verb("Membaca", "Read", "riːd → rid"),
    Verb("Memasak", "Cook", "kʊk → kuk"),
    Verb("Membersihkan", "Clean", "kliːn → klin"),
    Verb("Mencuci", "Wash", "wɒʃ → wosh"),
    Verb("Mendaki", "Climb", "klaɪm → klaim"),
    Verb("Duduk", "Sit", "sɪt → sit"),
    Verb("Berdiri", "Stand", "stænd → stend"),
    Verb("Tersenyum", "Smile", "smaɪl → smail"),
    Verb("Tertawa", "Laugh", "lɑːf → laf"),
    Verb("Menangis", "Cry", "kraɪ → krai"),
    Verb("Menunggu", "Wait", "weɪt → weit"),
    Verb("Mendengar", "Hear", "hɪə → hir"),
    Verb("Melihat", "Look", "lʊk → luk"),
    Verb("Menyentuh", "Touch", "tʌtʃ → tac"),
    Verb("Mencium", "Smell", "smel → smel"),
    Verb("Merasa", "Feel", "fiːl → fil"),
    Verb("Berpikir", "Think", "θɪŋk → thingk"),
    Verb("Tahu", "Know", "nəʊ → nou"),
    Verb("Mengerti", "Understand", "ˌʌn.dəˈstænd → an-der-stend"),
    Verb("Mengingat", "Remember", "rɪˈmem.bər → ri-mem-ber"),
    Verb("Melupakan", "Forget", "fəˈɡet → for-get"),
    Verb("Membantu", "Help", "help → help"),
    Verb("Menyukai", "Like", "laɪk → laik"),
    Verb("Membenci", "Hate", "heɪt → heit"),
    Verb("Mencintai", "Love", "lʌv → lav"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Menari", "Dance", "dɑːns → dens"),
    Verb("Bernyanyi", "Sing", "sɪŋ → sing"),
    Verb("Menulis", "Write", "raɪt → rait"),
    Verb("Membaca", "Read", "riːd → rid"),
    Verb("Bermain Musik", "Play music", "pleɪ ˈmjuː.zɪk → plei myu-zik"),
    Verb("Menonton", "Watch", "wɒtʃ → woc"),
    Verb("Bersantai", "Relax", "rɪˈlæks → ri-leks"),
    Verb("Beristirahat", "Rest", "rest → rest"),
    Verb("Mengemudi", "Drive", "draɪv → draiv"),
    Verb("Terbang", "Fly", "flaɪ → flai"),
    Verb("Mendaki", "Climb", "klaɪm → klaim"),
    Verb("Melompat", "Jump", "dʒʌmp → jamp"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Menjawab", "Answer", "ˈɑːn.sər → an-ser"),
    Verb("Bertanya", "Ask", "ɑːsk → ask"),
    Verb("Menjelaskan", "Explain", "ɪkˈspleɪn → eks-plein"),
    Verb("Memilih", "Choose", "tʃuːz → cus"),
    Verb("Menggunakan", "Use", "juːz → yuz"),
    Verb("Menyentuh", "Touch", "tʌtʃ → tac"),
    Verb("Membawa", "Carry", "ˈkær.i → ke-ri"),
    Verb("Memotong", "Cut", "kʌt → kat"),
    Verb("Memukul", "Hit", "hɪt → hit"),
    Verb("Mendorong", "Push", "pʊʃ → push"),
    Verb("Menarik", "Pull", "pʊl → pul"),
    Verb("Menangkap", "Catch", "kætʃ → kec"),
    Verb("Melempar", "Throw", "θrəʊ → thro"),
    Verb("Menendang", "Kick", "kɪk → kik"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Menikah", "Marry", "ˈmær.i → me-ri"),
    Verb("Bercerai", "Divorce", "dɪˈvɔːs → di-vors"),
    Verb("Lahir", "Born", "bɔːn → born"),
    Verb("Mati", "Die", "daɪ → dai"),
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
                cardHeader("Verb", "Pelajari kata kerja dalam bahasa inggris"),
                const SizedBox(height: 30),

                // Bagian Tabel
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                  itemCount: verbList.length,
                  itemBuilder: (context, index) {
                    final fruit = verbList[index];
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
                        children: [
                          Text(
                            fruit.indonesia,
                            style: const TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
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
                                  color: Colors.black,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
=======
import 'package:englify_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:englify_project/models/model_table.dart';

void main() {
  runApp(const DetailVerbPage());
}

class DetailVerbPage extends StatelessWidget {
  const DetailVerbPage({super.key});

  final List<Verb> verbList = const [
    Verb("Pergi", "Go", "ɡəʊ → gou"),
    Verb("Datang", "Come", "kʌm → kam"),
    Verb("Melihat", "See", "siː → si"),
    Verb("Mendengar", "Hear", "hɪə → hir"),
    Verb("Berbicara", "Speak", "spiːk → spik"),
    Verb("Makan", "Eat", "iːt → it"),
    Verb("Minum", "Drink", "drɪŋk → dringk"),
    Verb("Tidur", "Sleep", "sliːp → slip"),
    Verb("Bangun", "Wake up", "weɪk ʌp → weik ap"),
    Verb("Berlari", "Run", "rʌn → ran"),
    Verb("Berjalan", "Walk", "wɔːk → wok"),
    Verb("Bekerja", "Work", "wɜːk → werk"),
    Verb("Belajar", "Study", "ˈstʌd.i → sta-di"),
    Verb("Mengajar", "Teach", "tiːtʃ → tiic"),
    Verb("Menulis", "Write", "raɪt → rait"),
    Verb("Membaca", "Read", "riːd → rid"),
    Verb("Mendengarkan", "Listen", "ˈlɪs.ən → li-sen"),
    Verb("Bermain", "Play", "pleɪ → plei"),
    Verb("Berenang", "Swim", "swɪm → swim"),
    Verb("Memandikan", "Bathe", "beɪð → beid"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Membeli", "Buy", "baɪ → bai"),
    Verb("Menjual", "Sell", "sel → sel"),
    Verb("Membawa", "Bring", "brɪŋ → bring"),
    Verb("Membuat", "Make", "meɪk → meik"),
    Verb("Mengambil", "Take", "teɪk → teik"),
    Verb("Memberi", "Give", "ɡɪv → giv"),
    Verb("Mendapatkan", "Get", "ɡet → get"),
    Verb("Memegang", "Hold", "həʊld → hold"),
    Verb("Menemukan", "Find", "faɪnd → faind"),
    Verb("Menunjukkan", "Show", "ʃəʊ → show"),
    Verb("Menulis", "Write", "raɪt → rait"),
    Verb("Membaca", "Read", "riːd → rid"),
    Verb("Memasak", "Cook", "kʊk → kuk"),
    Verb("Membersihkan", "Clean", "kliːn → klin"),
    Verb("Mencuci", "Wash", "wɒʃ → wosh"),
    Verb("Mendaki", "Climb", "klaɪm → klaim"),
    Verb("Duduk", "Sit", "sɪt → sit"),
    Verb("Berdiri", "Stand", "stænd → stend"),
    Verb("Tersenyum", "Smile", "smaɪl → smail"),
    Verb("Tertawa", "Laugh", "lɑːf → laf"),
    Verb("Menangis", "Cry", "kraɪ → krai"),
    Verb("Menunggu", "Wait", "weɪt → weit"),
    Verb("Mendengar", "Hear", "hɪə → hir"),
    Verb("Melihat", "Look", "lʊk → luk"),
    Verb("Menyentuh", "Touch", "tʌtʃ → tac"),
    Verb("Mencium", "Smell", "smel → smel"),
    Verb("Merasa", "Feel", "fiːl → fil"),
    Verb("Berpikir", "Think", "θɪŋk → thingk"),
    Verb("Tahu", "Know", "nəʊ → nou"),
    Verb("Mengerti", "Understand", "ˌʌn.dəˈstænd → an-der-stend"),
    Verb("Mengingat", "Remember", "rɪˈmem.bər → ri-mem-ber"),
    Verb("Melupakan", "Forget", "fəˈɡet → for-get"),
    Verb("Membantu", "Help", "help → help"),
    Verb("Menyukai", "Like", "laɪk → laik"),
    Verb("Membenci", "Hate", "heɪt → heit"),
    Verb("Mencintai", "Love", "lʌv → lav"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Menari", "Dance", "dɑːns → dens"),
    Verb("Bernyanyi", "Sing", "sɪŋ → sing"),
    Verb("Menulis", "Write", "raɪt → rait"),
    Verb("Membaca", "Read", "riːd → rid"),
    Verb("Bermain Musik", "Play music", "pleɪ ˈmjuː.zɪk → plei myu-zik"),
    Verb("Menonton", "Watch", "wɒtʃ → woc"),
    Verb("Bersantai", "Relax", "rɪˈlæks → ri-leks"),
    Verb("Beristirahat", "Rest", "rest → rest"),
    Verb("Mengemudi", "Drive", "draɪv → draiv"),
    Verb("Terbang", "Fly", "flaɪ → flai"),
    Verb("Mendaki", "Climb", "klaɪm → klaim"),
    Verb("Melompat", "Jump", "dʒʌmp → jamp"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Menjawab", "Answer", "ˈɑːn.sər → an-ser"),
    Verb("Bertanya", "Ask", "ɑːsk → ask"),
    Verb("Menjelaskan", "Explain", "ɪkˈspleɪn → eks-plein"),
    Verb("Memilih", "Choose", "tʃuːz → cus"),
    Verb("Menggunakan", "Use", "juːz → yuz"),
    Verb("Menyentuh", "Touch", "tʌtʃ → tac"),
    Verb("Membawa", "Carry", "ˈkær.i → ke-ri"),
    Verb("Memotong", "Cut", "kʌt → kat"),
    Verb("Memukul", "Hit", "hɪt → hit"),
    Verb("Mendorong", "Push", "pʊʃ → push"),
    Verb("Menarik", "Pull", "pʊl → pul"),
    Verb("Menangkap", "Catch", "kætʃ → kec"),
    Verb("Melempar", "Throw", "θrəʊ → thro"),
    Verb("Menendang", "Kick", "kɪk → kik"),
    Verb("Membuka", "Open", "ˈəʊ.pən → ou-pen"),
    Verb("Menutup", "Close", "kləʊz → klouz"),
    Verb("Menikah", "Marry", "ˈmær.i → me-ri"),
    Verb("Bercerai", "Divorce", "dɪˈvɔːs → di-vors"),
    Verb("Lahir", "Born", "bɔːn → born"),
    Verb("Mati", "Die", "daɪ → dai"),
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
                cardHeader("Verb", "Pelajari kata kerja dalam bahasa inggris"),
                const SizedBox(height: 30),

                // Bagian Tabel
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                  itemCount: verbList.length,
                  itemBuilder: (context, index) {
                    final fruit = verbList[index];
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
                        children: [
                          Text(
                            fruit.indonesia,
                            style: const TextStyle(
                              fontFamily: "JosefinSans",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
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
                                  color: Colors.black,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
>>>>>>> 7d3a9635dfac6d07abaae3400e213fe01f11448a
