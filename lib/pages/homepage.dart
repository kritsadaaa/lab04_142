import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool starEgg = false;
  String foodRadio = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widget"),
      ),
      body: Column(
        children: [
          RedioMenulist("ก๋วยเตี๋ยว", "250", Color.fromARGB(136, 227, 255, 67)),
          RedioMenulist(
              "ก๋วยเตี๋ยวไก่", "300", Color.fromARGB(137, 201, 26, 26)),
          RedioMenulist(
              "ก๋วยเตี๋ยวไก่ตุ้น", "350", Color.fromARGB(136, 32, 201, 26)),
          RedioMenulist(
              "ก๋วยเตี๋ยวเนื้อ", "350", Color.fromARGB(135, 29, 26, 201)),
          RedioMenulist(
              "ก๋วยเตี๋ยวเนื้อตุ้น", "400", Color.fromARGB(135, 201, 26, 186)),
          Divider(),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text("ไข่ดาว"),
            value: starEgg,
            onChanged: (value) {
              setState(() {
                starEgg = value!;
              });
            },
          )
        ],
      ),
    );
  }

  RadioListTile<String> RedioMenulist(
      String title, String subtitle, tileColor) {
    return RadioListTile(
      activeColor: Color.fromARGB(255, 19, 13, 13),
      tileColor: tileColor,
      title: Text(title),
      subtitle: Text(subtitle),
      value: title,
      groupValue: foodRadio,
      onChanged: (value) {
        setState(() {
          foodRadio = value!;
        });
        print(foodRadio);
      },
    );
  }
}
