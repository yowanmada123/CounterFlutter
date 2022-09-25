import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'main_controller.dart';

class SetStatePage extends StatefulWidget {
  const SetStatePage({super.key});

  @override
  State<SetStatePage> createState() => _SetStatePageState();
}

class _SetStatePageState extends State<SetStatePage> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    log("BUILD WITH STATEFULL");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter With Statefull"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "NUMBER : $number",
            style: const TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: (() => setState(() => number--)),
                  icon: const Icon(Icons.remove)),
              const SizedBox(
                width: 20,
              ),
              IconButton(onPressed: (() => setState(() => number++)), icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
    );
  }
}
