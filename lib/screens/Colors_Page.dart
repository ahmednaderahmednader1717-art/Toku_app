import 'package:flutter/material.dart';
import 'package:toku/components/list_items.dart';
import 'package:toku/models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<itemModel> colors = const [
    itemModel(
      image: "assets/images/colors/color_red.png",
      jpName: "Aka",
      enName: "Red",
      audio: "sounds/colors/red.wav",
    ),
    itemModel(
      image: "assets/images/colors/color_green.png",
      jpName: "Midori",
      enName: "Green",
      audio: "sounds/colors/green.wav",
    ),
    itemModel(
      image: "assets/images/colors/color_black.png",
      jpName: "Kuro",
      enName: "Black",
      audio: "sounds/colors/black.wav",
    ),
    itemModel(
      image: "assets/images/colors/color_white.png",
      jpName: "Shiro",
      enName: "White",
      audio: "sounds/colors/white.wav",
    ),
    itemModel(
      image: "assets/images/colors/color_brown.png",
      jpName: "Chairo",
      enName: "Brown",
      audio: "sounds/colors/brown.wav",
    ),
    itemModel(
      image: "assets/images/colors/color_gray.png",
      jpName: "Haiiro",
      enName: "Gray",
      audio: "sounds/colors/gray.wav",
    ),
    itemModel(
      image: "assets/images/colors/yellow.png",
      jpName: "Kiiro",
      enName: "Yellow",
      audio: "sounds/colors/yellow.wav",
    ),
    itemModel(
      image: "assets/images/colors/color_dusty_yellow.png",
      jpName: "Kiiro",
      enName: "Dusty Yellow",
      audio: "sounds/colors/dusty yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7d40a2),
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Color(0xff49332a),
        title: const Text(
          "Colors",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, i) {
          return Item(colorItem: colors[i]);
        },
      ),
    );
  }
}
