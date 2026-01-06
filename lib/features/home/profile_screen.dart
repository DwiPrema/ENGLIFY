import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_englify/core/constant/app_colors.dart';
import 'package:project_englify/features/shared/widgets/widget_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  String bio = "No bio yet...";
  bool isEditing = false;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const Text(
              "Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "JosefinSans",
                fontSize: 31,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
                decoration: TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                      color: AppColors.white, shape: BoxShape.circle),
                  child: CircleAvatar(
                    radius: 70,
                    backgroundImage: _image != null
                        ? FileImage(_image!)
                        : const AssetImage("assets/images/profile_default.jpg")
                            as ImageProvider,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: _pickImage,
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                          color: AppColors.primary, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.edit,
                        size: 25,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                  horizontal: MediaQuery.of(context).padding.horizontal),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.2),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isEditing = true;
                      _controller.text = bio == "No bio yet..." ? "" : bio;
                    });
                  },
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                    child: isEditing
                        ? Center(
                            child: TextField(
                              maxLines: null,
                              maxLength: 150,
                              controller: _controller,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.paragraph2,
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                              decoration: InputDecoration(
                                suffix: Padding(
                                  padding:
                                      const EdgeInsetsGeometry.only(left: 16,),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        bio = _controller.text.isEmpty
                                            ? "No bio yet..."
                                            : _controller.text;
                                        isEditing = false;
                                      });
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 3),
                                      decoration: BoxDecoration(
                                          color: AppColors.primary,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: const Icon(
                                        Icons.done_rounded,
                                        size: 20,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                isDense: true,
                                counter: const SizedBox.shrink(),
                                contentPadding: EdgeInsets.zero,
                                border: const UnderlineInputBorder(
                                    borderSide: BorderSide.none),
                                hintText: "No bio yet...",
                              ),
                            ),
                          )
                        : Center(
                            child: Text(
                              bio,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.paragraph2,
                                fontSize: 16,
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: AppColors.mainBg,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textTitle(
                        "Personal Identity", TextAlign.left, AppColors.black),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}