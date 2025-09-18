import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/number.dart';


class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Number> numbers = const [
    Number(
      image: "assets/images/numbers/number_one.png",
      jpName: "Ichi",
      enName: "One",
      audio: "sounds/numbers/number_one_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "Two",
      audio: "sounds/numbers/number_two_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "Three",
      audio: "sounds/numbers/number_three_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "Four",
      audio: "sounds/numbers/number_four_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "Five",
      audio: "sounds/numbers/number_five_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_six.png",
      jpName: "Roku",
      enName: "Six",
      audio: "sounds/numbers/number_six_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_seven.png",
      jpName: "Shichi",
      enName: "Seven",
      audio: "sounds/numbers/number_seven_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_eight.png",
      jpName: "Hachi",
      enName: "Eight",
      audio: "sounds/numbers/number_eight_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_nine.png",
      jpName: "Kyū",
      enName: "Nine",
      audio: "sounds/numbers/number_nine_sound.mp3",
    ),
    Number(
      image: "assets/images/numbers/number_ten.png",
      jpName: "Jū",
      enName: "Ten",
      audio: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff99531),
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Color(0xff49332a),
        title: const Text(
          "Numbers",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, i) {
          return Item(number: numbers[i]);
        },
      ),
    );
  }
}
