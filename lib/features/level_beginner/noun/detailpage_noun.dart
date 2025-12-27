import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/shared/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class DetailNounPage extends StatelessWidget {
  const DetailNounPage({super.key});

  final List<Noun> nounList = const [
    Noun("Meja", "Table", "→ tei-bel"),
    Noun("Kursi", "Chair", "→ cher"),
    Noun("Pintu", "Door", "→ dor"),
    Noun("Jendela", "Window", "→ win-dow"),
    Noun("Lantai", "Floor", "→ flor"),
    Noun("Dinding", "Wall", "→ wol"),
    Noun("Atap", "Roof", "→ ruf"),
    Noun("Lampu", "Lamp", "→ lemp"),
    Noun("Kipas angin", "Fan", "→ fen"),
    Noun("Televisi", "Television", "→ te-le-vi-zhon"),
    Noun("Komputer", "Computer", "→ kom-pyu-ter"),
    Noun("Laptop", "Laptop", "→ lep-top"),
    Noun("Telepon", "Phone", "→ fon"),
    Noun("Tablet", "Tablet", "→ teb-let"),
    Noun("Jam", "Clock", "→ klok"),
    Noun("Kunci", "Key", "→ ki"),
    Noun("Tas", "Bag", "→ beg"),
    Noun("Buku", "Book", "→ buk"),
    Noun("Pulpen", "Pen", "→ pen"),
    Noun("Pensil", "Pencil", "→ pen-sil"),
    Noun("Penghapus", "Eraser", "→ i-rei-ser"),
    Noun("Buku tulis", "Notebook", "→ not-buk"),
    Noun("Kertas", "Paper", "→ pei-per"),
    Noun("Penggaris", "Ruler", "→ ru-ler"),
    Noun("Kalkulator", "Calculator", "→ kel-kyu-lei-ter"),
    Noun("Kotak pensil", "Pencil case", "→ pen-sil keis"),
    Noun("Tas sekolah", "School bag", "→ skul beg"),
    Noun("Tempat sampah", "Trash bin", "→ tresh bin"),
    Noun("Piring", "Plate", "→ pleit"),
    Noun("Gelas", "Glass", "→ glas"),
    Noun("Cangkir", "Cup", "→ kap"),
    Noun("Sendok", "Spoon", "→ spun"),
    Noun("Garpu", "Fork", "→ fork"),
    Noun("Pisau", "Knife", "→ naif"),
    Noun("Mangkok", "Bowl", "→ boul"),
    Noun("Panci", "Pot", "→ pot"),
    Noun("Wajan", "Pan", "→ pen"),
    Noun("Kulkas", "Refrigerator", "→ ri-fri-je-rei-tor"),
    Noun("Kompor", "Stove", "→ stov"),
    Noun("Dapur", "Kitchen", "→ ki-chen"),
    Noun("Tempat tidur", "Bed", "→ bed"),
    Noun("Bantal", "Pillow", "→ pi-low"),
    Noun("Selimut", "Blanket", "→ bleng-ket"),
    Noun("Lemari", "Cupboard", "→ kap-bord"),
    Noun("Cermin", "Mirror", "→ mi-ror"),
    Noun("Tirai", "Curtain", "→ ker-ten"),
    Noun("Kamar mandi", "Bathroom", "→ bath-rum"),
    Noun("Shower", "Shower", "→ shau-er"),
    Noun("Bak mandi", "Bathtub", "→ bath-tab"),
    Noun("Handuk", "Towel", "→ tau-el"),
    Noun("Sikat gigi", "Toothbrush", "→ tuth-brash"),
    Noun("Pasta gigi", "Toothpaste", "→ tuth-peist"),
    Noun("Sabun", "Soap", "→ soap"),
    Noun("Sampo", "Shampoo", "→ shem-pu"),
    Noun("Sisir", "Comb", "→ kom"),
    Noun("Mobil", "Car", "→ kar"),
    Noun("Motor", "Motorcycle", "→ mo-ter-sai-kel"),
    Noun("Sepeda", "Bicycle", "→ bai-si-kel"),
    Noun("Jalan", "Road", "→ rod"),
    Noun("Lampu lalu lintas", "Traffic light", "→ trefik lait"),
  ];

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
                  "Animal", "Pelajari nama nama hewan dalam bahasa inggris"),
              const SizedBox(height: 30),

              // Bagian Tabel
              ListView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                itemCount: nounList.length,
                itemBuilder: (context, index) {
                  final fruit = nounList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300, width: 1),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
