// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial_getx/controller/tap_controller.dart';
import 'package:tutorial_getx/first_page.dart';
import 'package:tutorial_getx/second_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //container ini untuk nampilin hsl angka, yg diklik
            GetBuilder<TapController>(
              builder: (_) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff89dad0),
                  ),
                  child: Center(
                    child: Text(
                      controller.x.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
            //container untuk tombol "TAB"
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0),
                ),
                child: Center(
                  child: Text(
                    'tap',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            //Go To First Pagee...
            GestureDetector(
              onTap: () {
                Get.to(()=> FirstPage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0),
                ),
                child: Center(
                  child: Text(
                    'GO TO FIRST PAGE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            //Go To Second Page
            GestureDetector(
              onTap: () {
                Get.to(()=> SecondPage());
              },
              child: Container(
                margin: EdgeInsets.all(20),
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff89dad0),
                ),
                child: Center(
                  child: Text(
                    'Second Page',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            //
           
          ],
        ),
      ),
    );
  }
}
