import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_englify/pages/home.dart';
import 'package:project_englify/widgets/widget_text.dart';
import 'package:project_englify/widgets/widget_text_field.dart';

void main() {
  runApp(const InDataUser());
}

class InDataUser extends StatefulWidget {
  const InDataUser({super.key});

  @override
  State<InDataUser> createState() => _InDataUserState();
}

class _InDataUserState extends State<InDataUser> {
  final dateController = TextEditingController();
  final ageController = TextEditingController();
  final nameController = TextEditingController();

  @override
  void dispose() {
    dateController.dispose();
    ageController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xffD8EFFF),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/maskot-englify-green.png",
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    splashTexth1(
                        "Enter Your Identity First!", TextAlign.center),
                    splashTextp(
                        "do not know, then do not love, so let’s enter your identity.",
                        TextAlign.center),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      textLabel: "your name",
                      onChange: (_) => setState(() {}),
                      icon: Icons.person,
                      maxLength: 10,
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFieldWidget(
                      textLabel: "your age",
                      icon: Icons.timelapse,
                      typeIn: TextInputType.number,
                      inputFormatter: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      controller: ageController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFieldWidget(
                      textLabel: "your birthday",
                      icon: Icons.cake,
                      readOnly: true,
                      controller: dateController,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1850),
                            lastDate: DateTime.now());

                        if (pickedDate != null) {
                          dateController.text =
                              "${pickedDate.day} - ${pickedDate.month} - ${pickedDate.year}";
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Home(name: nameController.text)));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xff014371),
                          Color(0xff8BC73F),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 52,
                      child: textTitle("Save", TextAlign.center, Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
