import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:taskmanagementtask/app/utils/style/AppColors.dart';
import 'package:taskmanagementtask/main.dart';

import '../../../utils/widget/header.dart';
import '../../../utils/widget/sideBar.dart/side.Bar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar(),
      backgroundColor: AppColors.primaryBg,
      body: Row(children: [
        !context.isPhone
            ? const Expanded(
                flex: 2,
                child: SideBar(),
              )
            : const SizedBox(),
        Expanded(
          flex: 15,
          child: Column(children: [
            !context.isPhone
                ? const header()
                : Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(children: [
                      IconButton(
                        onPressed: () {
                          _drawerKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: AppColors.primaryText,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                          // mainAxisAlignment: MainAxisAlignment.start
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Text(
                              'Task Management',
                              style: TextStyle(
                                  fontSize: 20, color: AppColors.primaryText),
                            ),
                            const Text(
                              'Manage task made easy with friends',
                              style: TextStyle(
                                  fontSize: 15, color: AppColors.primaryText),
                            ),
                          ]),
                      const Spacer(),
                      const Icon(
                        FontAwesomeIcons.bell,
                        color: AppColors.primaryText,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 25,
                          foregroundImage: NetworkImage(
                              'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                        ),
                      ),
                    ]),
                  ),
            //content / isi page / screen
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(50),
                margin: !context.isPhone
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: !context.isPhone
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(30),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  const Text(
                    'My Task',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Container(
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.cardBg,
                            ),
                            padding: EdgeInsets.all(20),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.amber,
                                        radius: 20,
                                        foregroundImage: NetworkImage(
                                            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg'),
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 25,
                                      width: 80,
                                      color: AppColors.primaryBg,
                                      child: const Center(
                                        child: Text('100 %'),
                                      ),
                                    ),
                                  ]),
                                  const Spacer(),
                                  Container(
                                    height: 25,
                                    width: 80,
                                    color: AppColors.primaryBg,
                                    child: const Center(
                                      child: Text('10 / 10  Task'),
                                    ),
                                  ),
                                  const Text(
                                    'Pemrograman Mobile',
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const Text(
                                    'Deadline 2 hari Lagi',
                                    style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontSize: 15,
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                ]),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
