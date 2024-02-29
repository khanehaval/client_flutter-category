import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class Consultants extends StatelessWidget {
  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Handle the picked image file
      // You can display the image or perform further processing
      // For now, let's print the image path
      print("Picked Image Path: ${pickedFile.path}");
    }
  }

  var show = true.obs;

  Consultants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.to(() => Home()),
          icon: const Icon(Icons.close),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 152,
                  height: 131,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/intro_screen_2.png',
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "پنل مشاوران",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 48,
                      width: getWidth(context),
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'نام خانوادگی *',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: getWidth(context),
                      child: TextField(
                        onTap: () => show.value = false,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'نام *',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 48,
                      width: getWidth(context),
                      child: TextField(
                        textAlign: TextAlign.right,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'بارگذاری تصویر کارت ملی*',
                          prefixIcon: IconButton(
                            icon: const Icon(CupertinoIcons.add_circled),
                            onPressed: () {
                              pickImage();
                            },
                          ),
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: getWidth(context),
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'کد ملی *',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 48,
                      width: getWidth(context),
                      child: TextField(
                        textAlign: TextAlign.right,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'بارگذاری تصویر کارت ملی*',
                          prefixIcon: IconButton(
                            icon: const Icon(Icons.location_searching_sharp),
                            onPressed: () {},
                          ),
                          hintStyle: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                      width: getWidth(context),
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تهران*',
                          prefixIcon: Icon(Icons.location_on_outlined),
                          hintStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: MAIN_FONT_FAMILY),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  child: SizedBox(
                    height: 48,
                    // width: getWidth(context),
                    child: TextField(
                      scrollPadding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                          hintText: 'نام کاربری ( به انگلیسی) *',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(() => show.value
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 160,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: getGradient(),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent),
                        child: const Text(
                          'تایید',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink()),
        ],
      ),
    );
  }

  double getWidth(BuildContext context) =>
      (MediaQuery.of(context).size.width / 2) * 0.9;

  LinearGradient getGradient() => const LinearGradient(colors: [
        Color.fromARGB(700, 55, 250, 100),
        Colors.blue,
      ]);
}
