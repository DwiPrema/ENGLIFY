import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/identity_user/identity_controller.dart';
import 'package:project_englify/core/routes/routes.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';
import 'package:project_englify/features/shared/widgets/widget_text_field.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InDataUser extends StatefulWidget {
  const InDataUser({super.key});

  @override
  State<InDataUser> createState() => _InDataUserState();
}

class _InDataUserState extends State<InDataUser> {
  final controller = ControllerIdentity();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBg,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/logo_ilustration/logo_905px.webp",
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    englifyText("Englify", TextAlign.center, 40),
                    const SizedBox(
                      height: 16,
                    ),
                    splashTextp(
                        "do not know, then do not love, so let’s enter your identity.",
                        TextAlign.center),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    TextFieldWidget(
                      textLabel: "your name",
                      onChange: (_) => setState(() {}),
                      icon: Icons.person,
                      maxLength: 10,
                      controller: controller.nameController,
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
                      controller: controller.ageController,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFieldWidget(
                      textLabel: "your birthday",
                      icon: Icons.cake,
                      readOnly: true,
                      controller: controller.dateController,
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1850),
                            lastDate: DateTime.now());

                        if (selectedDate != null) {
                          setState(() {
                            controller.setDate(selectedDate);
                          });
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();

                    await prefs.setBool("identity_filled", true);

                    if (!controller.isDataValid()) return;

                    await controller.saveIdentity();

                    if (!context.mounted) return;

                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.homeRoute, (route) => false);
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
                          AppColors.secondary,
                          AppColors.primary,
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
                      child:
                          textTitle("Save", TextAlign.center, AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
