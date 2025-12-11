import 'package:englify_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:englify_project/models/model_table.dart';

void main() {
  runApp(const DetailAnimalPage());
}

class DetailAnimalPage extends StatelessWidget {
  const DetailAnimalPage({super.key});

  final List<Animal> animalList = const [
    Animal("Kucing", "Cat", "kæt → kucing"),
    Animal("Anjing", "Dog", "dɒɡ → anjing"),
    Animal("Burung", "Bird", "bɜːd → burung"),
    Animal("Ikan", "Fish", "fɪʃ → ikan"),
    Animal("Gajah", "Elephant", "ˈel.ɪ.fənt → gajah"),
    Animal("Harimau", "Tiger", "ˈtaɪ.ɡər → harimau"),
    Animal("Singa", "Lion", "ˈlaɪ.ən → singa"),
    Animal("Kelinci", "Rabbit", "ˈræb.ɪt → kelinci"),
    Animal("Kuda", "Horse", "hɔːs → kuda"),
    Animal("Ayam", "Chicken", "ˈtʃɪk.ɪn → ayam"),
    Animal("Sapi", "Cow", "kaʊ → sapi"),
    Animal("Bebek", "Duck", "dʌk → bebek"),
    Animal("Kambing", "Goat", "ɡəʊt → kambing"),
    Animal("Ular", "Snake", "sneɪk → ular"),
    Animal("Kura-kura", "Turtle", "ˈtɜː.təl → kura-kura"),
    Animal("Katak", "Frog", "frɒɡ → katak"),
    Animal("Kupu-kupu", "Butterfly", "ˈbʌt.ə.flaɪ → kupu-kupu"),
    Animal("Laba-laba", "Spider", "ˈspaɪ.dər → laba-laba"),
    Animal("Lebah", "Bee", "biː → lebah"),
    Animal("Panda", "Panda", "ˈpæn.də → panda"),
    Animal("Beruang", "Bear", "beər → beruang"),
    Animal("Kangguru", "Kangaroo", "ˌkæŋ.ɡəˈruː → kangguru"),
    Animal("Zebra", "Zebra", "ˈziː.brə → zebra"),
    Animal("Rusa", "Deer", "dɪər → rusa"),
    Animal("Serigala", "Wolf", "wʊlf → serigala"),
    Animal("Kucing besar", "Leopard", "ˈlep.əd → macan tutul"),
    Animal("Kera", "Monkey", "ˈmʌŋ.ki → monyet"),
    Animal("Gorila", "Gorilla", "ɡəˈrɪl.ə → gorila"),
    Animal("Koala", "Koala", "kəʊˈɑː.lə → koala"),
    Animal("Buaya", "Crocodile", "ˈkrɒk.ə.daɪl → buaya"),
    Animal("Elang", "Eagle", "ˈiː.ɡəl → elang"),
    Animal("Burung hantu", "Owl", "aʊl → burung hantu"),
    Animal("Merpati", "Pigeon", "ˈpɪdʒ.ən → merpati"),
    Animal("Burung beo", "Parrot", "ˈpær.ət → burung beo"),
    Animal("Lumba-lumba", "Dolphin", "ˈdɒl.fɪn → lumba-lumba"),
    Animal("Paus", "Whale", "weɪl → paus"),
    Animal("Hiu", "Shark", "ʃɑːk → hiu"),
    Animal("Kepiting", "Crab", "kræb → kepiting"),
    Animal("Udang", "Shrimp", "ʃrɪmp → udang"),
    Animal("Bintang laut", "Starfish", "ˈstɑː.fɪʃ → bintang laut"),
    Animal("Kuda laut", "Seahorse", "ˈsiː.hɔːs → kuda laut"),
    Animal("Penguin", "Penguin", "ˈpeŋ.ɡwɪn → penguin"),
    Animal("Beruang kutub", "Polar bear", "ˈpəʊ.lə beər → beruang kutub"),
    Animal("Rubah", "Fox", "fɒks → rubah"),
    Animal("Landak", "Hedgehog", "ˈhedʒ.hɒɡ → landak"),
    Animal("Tikus", "Mouse", "maʊs → tikus"),
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
                cardHeader(
                    "Animal", "Pelajari nama nama hewan dalam bahasa inggris"),
                const SizedBox(height: 30),

                // Bagian Tabel
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                  itemCount: animalList.length,
                  itemBuilder: (context, index) {
                    final fruit = animalList[index];
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
