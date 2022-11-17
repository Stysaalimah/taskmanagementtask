import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Row(children: [
        Expanded(
          flex: 2,
          child: Container(
            height: Get.height,
            color: Colors.blue[100],
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    alignment: Alignment.topCenter,
                    child: const Image(
                      image: AssetImage('assets/icons/icon.png'),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: Center(
                      child: InkWell(
                        child: Column(children: [
                          Container(
                            height: 40,
                            width: 100,
                            decoration: Get.currentRoute == '/home'
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.white,
                                  )
                                : BoxDecoration(),
                            child: Icon(
                                Get.currentRoute == '/home'
                                    ? Ionicons.desktop
                                    : Ionicons.desktop_outline,
                                color: Colors.grey,
                                size: 30),
                          ),
                          SizedBox(
                            height: 100,
                            child: Center(
                              child: InkWell(
                                child: Column(children: [
                                  Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                    ),
                                    child: Icon(Ionicons.desktop,
                                        color: Colors.grey, size: 30),
                                  ),

                                  // ignore: prefer_const_constructors

                                  const Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
