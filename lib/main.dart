import 'dart:developer';

import 'package:counter/controllers/set_state_page.dart';
import 'package:counter/controllers/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final mainC = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    log("BUILD");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter With GetX"),
        centerTitle: true,
      ),
      body: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            log("Refresh Number");
            return Text(
              "NUMBER : ${mainC.number.value}",
              style: const TextStyle(fontSize: 20),
            );
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    mainC.decrement();
                  },
                  icon: const Icon(Icons.remove)),
              const SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    mainC.increment();
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
          GestureDetector(
            onTap: (() => Get.to(const SetStatePage())),
            child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue
                  ),
                  child: 
                  const Center(child: Text("Counter Page With Set State", style: TextStyle(color: Colors.white),)),
                ),
          )
          
        ],
      ),
    );
  }
}
