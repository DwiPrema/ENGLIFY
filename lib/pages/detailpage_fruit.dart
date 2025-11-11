import 'package:englify_project/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:englify_project/models/model_table.dart';

void main() {
  runApp(const DetailFruitPage());
}

class DetailFruitPage extends StatelessWidget {
  const DetailFruitPage({super.key});

  final List<Fruit> fruitList = const [
    Fruit("Apel", "Apple", "ˈæp.əl → apel"),
    Fruit("Pisang", "Banana", "bəˈnæn.ə → be-na-na"),
    Fruit("Jeruk", "Orange", "ˈɒr.ɪndʒ → or-ens"),
    Fruit("Mangga", "Mango", "ˈmæŋ.ɡoʊ → meng-gou"),
    Fruit("Anggur", "Grapes", "ɡreɪps → greips"),
    Fruit("Semangka", "Watermelon", "ˈwɔː.təˌmel.ən → woter-melon"),
    Fruit("Pepaya", "Papaya", "pəˈpaɪ.ə → pa-paya"),
    Fruit("Nanas", "Pineapple", "ˈpaɪnˌæp.əl → pain-apel"),
    Fruit("Melon", "Melon", "ˈmel.ən → melon"),
    Fruit("Strawberi", "Strawberry", "ˈstrɔːˌber.i → stro-beri"),
    Fruit("Kiwi", "Kiwi", "ˈkiː.wiː → ki-wi"),
    Fruit("Pir", "Pear", "peər → per"),
    Fruit("Jambu", "Guava", "ˈɡwɑː.və → gua-va"),
    Fruit("Lemon", "Lemon", "ˈlem.ən → le-mon"),
    Fruit("Lime", "Lime", "laɪm → laim"),
    Fruit("Kelapa", "Coconut", "ˈkəʊ.kə.nʌt → kou-ko-nat"),
    Fruit("Durian", "Durian", "ˈdʊə.ri.ən → du-ri-en"),
    Fruit("Salak", "Snake Fruit", "sneɪk fruːt → snek frut"),
    Fruit("Sirsak", "Soursop", "ˈsaʊə.sɒp → saur-sop"),
    Fruit("Delima", "Pomegranate", "ˈpɒm.ɪˌɡræn.ɪt → pomi-granit"),
    Fruit("Blueberi", "Blueberry", "ˈbluːˌber.i → blu-beri"),
    Fruit("Raspberry", "Raspberry", "ˈræzˌber.i → raz-beri"),
    Fruit("Blackberry", "Blackberry", "ˈblækˌber.i → blek-beri"),
    Fruit("Ceri", "Cherry", "ˈtʃer.i → ce-ri"),
    Fruit("Plum", "Plum", "plʌm → plem"),
    Fruit("Aprikot", "Apricot", "ˈeɪ.prɪ.kɒt → ei-pri-kot"),
    Fruit("Persik", "Peach", "piːtʃ → pic"),
    Fruit("Kurma", "Date", "deɪt → deit"),
    Fruit("Tin", "Fig", "fɪɡ → fig"),
    Fruit("Alpukat", "Avocado", "ˌæv.əˈkɑː.dəʊ → avo-kado"),
    Fruit("Markisa", "Passion Fruit", "ˈpæʃ.ən fruːt → peshon-frut"),
    Fruit("Buah Naga", "Dragon Fruit", "ˈdræɡ.ən fruːt → dregon-frut"),
    Fruit("Belimbing", "Starfruit", "ˈstɑː.fruːt → star-frut"),
    Fruit("Cempedak", "Jackfruit", "ˈdʒæk.fruːt → jek-frut"),
    Fruit("Sukun", "Breadfruit", "ˈbred.fruːt → bred-frut"),
    Fruit("Manggis", "Mangosteen", "ˈmæŋ.ɡəˌstiːn → meng-gostin"),
    Fruit("Kelengkeng", "Longan", "ˈlɒŋ.ən → long-en"),
    Fruit("Leci", "Lychee", "ˈlaɪ.tʃiː → lai-ci"),
    Fruit("Zaitun", "Olive", "ˈɒl.ɪv → o-liv"),
    Fruit("Kismis", "Raisin", "ˈreɪ.zɪn → rei-zin"),
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
                    "Fruit", "Pelajari nama nama buah dalam bahasa inggris"),
                const SizedBox(height: 30),

                // Bagian Tabel
                ListView.builder(
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                  itemCount: fruitList.length,
                  itemBuilder: (context, index) {
                    final fruit = fruitList[index];
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
