import 'package:project_englify/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:project_englify/models/model_table.dart';

class DetailAdjectivePage extends StatelessWidget {
  const DetailAdjectivePage({super.key});

  final List<Adjective> adjectiveList = const [
    Adjective("Besar", "Big", "bɪɡ → big"),
    Adjective("Kecil", "Small", "smɔːl → smol"),
    Adjective("Panjang", "Long", "lɒŋ → long"),
    Adjective("Pendek", "Short", "ʃɔːt → short"),
    Adjective("Tinggi", "Tall", "tɔːl → tol"),
    Adjective("Gemuk", "Fat", "fæt → fet"),
    Adjective("Kurus", "Thin", "θɪn → thin"),
    Adjective("Tua", "Old", "əʊld → old"),
    Adjective("Muda", "Young", "jʌŋ → yang"),
    Adjective("Baru", "New", "njuː → nyu"),
    Adjective("Baik", "Good", "ɡʊd → gud"),
    Adjective("Buruk", "Bad", "bæd → bed"),
    Adjective("Cantik", "Beautiful", "ˈbjuː.tɪ.fəl → byu-ti-ful"),
    Adjective("Jelek", "Ugly", "ˈʌɡ.li → ag-li"),
    Adjective("Bahagia", "Happy", "ˈhæp.i → he-pi"),
    Adjective("Sedih", "Sad", "sæd → sed"),
    Adjective("Marah", "Angry", "ˈæŋ.ɡri → eng-gri"),
    Adjective("Lelah", "Tired", "ˈtaɪəd → tay-erd"),
    Adjective("Malas", "Lazy", "ˈleɪ.zi → lei-zi"),
    Adjective("Pintar", "Clever", "ˈklev.ər → kle-ver"),
    Adjective("Baik Hati", "Kind", "kaɪnd → kaind"),
    Adjective("Kasar", "Rude", "ruːd → rud"),
    Adjective("Kaya", "Rich", "rɪtʃ → ric"),
    Adjective("Miskin", "Poor", "pʊər → pur"),
    Adjective("Bersih", "Clean", "kliːn → klin"),
    Adjective("Kotor", "Dirty", "ˈdɜː.ti → der-ti"),
    Adjective("Panas", "Hot", "hɒt → hot"),
    Adjective("Dingin", "Cold", "kəʊld → kold"),
    Adjective("Basah", "Wet", "wet → wet"),
    Adjective("Kering", "Dry", "draɪ → drai"),
    Adjective("Berisik", "Noisy", "ˈnɔɪ.zi → noi-zi"),
    Adjective("Tenang", "Quiet", "ˈkwaɪ.ət → kwai-et"),
    Adjective("Lambat", "Slow", "sləʊ → slo"),
    Adjective("Cepat", "Fast", "fɑːst → fast"),
    Adjective("Mudah", "Easy", "ˈiː.zi → i-zi"),
    Adjective("Sulit", "Difficult", "ˈdɪf.ɪ.kəlt → di-fi-kalt"),
    Adjective("Mahal", "Expensive", "ɪkˈspen.sɪv → eks-pen-siv"),
    Adjective("Murah", "Cheap", "tʃiːp → cip"),
    Adjective("Penuh", "Full", "fʊl → ful"),
    Adjective("Kosong", "Empty", "ˈemp.ti → emp-ti"),
    Adjective("Gelap", "Dark", "dɑːk → dark"),
    Adjective("Terang", "Bright", "braɪt → brait"),
    Adjective("Lezat", "Delicious", "dɪˈlɪʃ.əs → di-li-syos"),
    Adjective("Pahit", "Bitter", "ˈbɪt.ər → bi-ter"),
    Adjective("Asin", "Salty", "ˈsɔːl.ti → sol-ti"),
    Adjective("Manis", "Sweet", "swiːt → swit"),
    Adjective("Asam", "Sour", "saʊər → saur"),
    Adjective("Kuat", "Strong", "strɒŋ → strong"),
    Adjective("Lemah", "Weak", "wiːk → wik"),
    Adjective("Lembut", "Soft", "sɒft → soft"),
    Adjective("Keras", "Hard", "hɑːd → hard"),
    Adjective("Dalam", "Deep", "diːp → dip"),
    Adjective("Dangkal", "Shallow", "ˈʃæl.əʊ → sha-lou"),
    Adjective("Tebal", "Thick", "θɪk → thik"),
    Adjective("Tipis", "Thin", "θɪn → thin"),
    Adjective("Awal", "Early", "ˈɜː.li → er-li"),
    Adjective("Terlambat", "Late", "leɪt → leit"),
    Adjective("Sibuk", "Busy", "ˈbɪz.i → bi-zi"),
    Adjective("Bebas", "Free", "friː → fri"),
    Adjective("Lucu", "Funny", "ˈfʌn.i → fa-ni"),
    Adjective("Serius", "Serious", "ˈsɪə.ri.əs → si-ri-es"),
    Adjective("Ramah", "Friendly", "ˈfrend.li → frend-li"),
    Adjective("Sopan", "Polite", "pəˈlaɪt → po-lait"),
    Adjective("Jujur", "Honest", "ˈɒn.ɪst → o-nest"),
    Adjective("Berani", "Brave", "breɪv → breiv"),
    Adjective("Pemalu", "Shy", "ʃaɪ → shai"),
    Adjective("Dermawan", "Generous", "ˈdʒen.ər.əs → je-ne-ros"),
    Adjective("Serakah", "Greedy", "ˈɡriː.di → gri-di"),
    Adjective("Penasaran", "Curious", "ˈkjʊə.ri.əs → kyur-ios"),
    Adjective("Suka Menolong", "Helpful", "ˈhelp.fəl → help-ful"),
    Adjective("Hati-hati", "Careful", "ˈkeə.fəl → ker-ful"),
    Adjective("Ceroboh", "Careless", "ˈkeə.ləs → ker-les"),
    Adjective("Tenang", "Calm", "kɑːm → kam"),
    Adjective("Gugup", "Nervous", "ˈnɜː.vəs → ner-ves"),
    Adjective("Membosankan", "Boring", "ˈbɔː.rɪŋ → bo-ring"),
    Adjective("Menyenangkan", "Exciting", "ɪkˈsaɪ.tɪŋ → ek-sai-ting"),
    Adjective("Nyaman", "Comfortable", "ˈkʌm.fə.tə.bəl → kom-for-ta-bel"),
    Adjective("Menarik", "Interesting", "ˈɪn.trəs.tɪŋ → in-tres-ting"),
    Adjective("Populer", "Popular", "ˈpɒp.jə.lər → pop-yu-ler"),
    Adjective("Kuat (berpengaruh)", "Powerful", "ˈpaʊə.fəl → pau-er-ful"),
    Adjective("Beruntung", "Lucky", "ˈlʌk.i → la-ki"),
    Adjective("Sial", "Unlucky", "ʌnˈlʌk.i → an-la-ki"),
    Adjective("Sehat", "Healthy", "ˈhel.θi → hel-thi"),
    Adjective("Sakit", "Sick", "sɪk → sik"),
    Adjective("Sempit", "Narrow", "ˈnær.əʊ → ne-ro"),
    Adjective("Lebar", "Wide", "waɪd → waid"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD8EFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian Header
              cardHeader(
                  "Adjective", "Pelajari kata sifat dalam bahasa inggris"),
              const SizedBox(height: 30),

              // Bagian Tabel
              ListView.builder(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // biar tetap bisa scroll di SingleChildScrollView
                itemCount: adjectiveList.length,
                itemBuilder: (context, index) {
                  final fruit = adjectiveList[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
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
    );
  }
}
