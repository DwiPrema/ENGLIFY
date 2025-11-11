import 'package:flutter/material.dart';
import 'package:englify_project/pages/home.dart';

void main() {
  runApp(const Splash());
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.jpg"),
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    widthFactor: 1.0,
                    heightFactor: 0.45,
                    child: Container(
                      width: double.infinity,
                      height: 585,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xff000000).withOpacity(0),
                            const Color(0xff000000).withOpacity(0),
                            const Color(0xff1F4C6B).withOpacity(0.5),
                            const Color(0xff1F4C6B).withOpacity(0.9),
                            const Color(0xff1F4C6B).withOpacity(1),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Image(
                          image: AssetImage("assets/images/logo.png"),
                          width: 200,
                          alignment: Alignment.center,
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                          child: Text(
                            'Englify',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Montserrat",
                              fontSize: 39,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(height: 200),
                        SizedBox(
                          width: 250,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xff8BC73F).withOpacity(0.9),
                              foregroundColor: const Color(0xffFFFFFF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Mulai Belajar",
                              style: TextStyle(
                                fontFamily: "JosefinSans",
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "English Course",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JosefinSans",
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ),
                        const Text(
                          "for your future",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JosefinSans",
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
