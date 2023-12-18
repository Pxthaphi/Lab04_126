// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String foodRadio = "";

  bool foodcheck1 = false;
  bool foodcheck2 = false;
  bool foodcheck3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: const Text("Pathaphi 126"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            MenuFood("ชาเย็น", "ชาเย็น", "45 บาท"),
            MenuFood("นมสดเย็น", "นมสดเย็น", "40 บาท"),
            MenuFood("กาแฟ", "กาแฟ", "50 บาท"),
            MenuFood("มัชชะ", "มัชชะชาเขียวถั่วแดงญี่ปุ่น", "55 บาท"),
            MenuFood("ลาเต้", "ลาเต้", "50 บาท"),
            const Divider(),
            CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("เพิ่มไข่มุก + 5 บาท"),
                value: foodcheck1,
                onChanged: (value) {
                  setState(() {
                    foodcheck1 = value!;
                  });
                }),
                CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("เพิ่มบุก + 5 บาท"),
                value: foodcheck2,
                onChanged: (value) {
                  setState(() {
                    foodcheck2 = value!;
                  });
                }),
                CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text("เพิ่มถั่วแดง + 15 บาท"),
                value: foodcheck3,
                onChanged: (value) {
                  setState(() {
                    foodcheck3 = value!;
                  });
                })
          ]),
        ));
  }

  RadioListTile<String> MenuFood(String value, String title, String subtitle) {
    return RadioListTile(
        fillColor:
            const MaterialStatePropertyAll(Color.fromARGB(255, 255, 152, 0)),
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: Color.fromARGB(
                255, 90, 200, 0), // Change this color to your desired color
          ),
        ),
        secondary: const Icon(Icons.shopping_bag_outlined,
            color: Color.fromARGB(255, 90, 200, 0)),
        value: value,
        groupValue: foodRadio,
        onChanged: (value) {
          setState(() {
            foodRadio = value!;
          });
        });
  }
}
