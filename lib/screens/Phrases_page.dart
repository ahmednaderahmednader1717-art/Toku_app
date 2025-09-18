import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';
import 'package:toku/models/phrase.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Phrase> phrases = const [
    Phrase(
      jpName: "Kimasu ka?",
      enName: "Are you coming?",
      audio: "sounds/phrases/are_you_coming.wav",
    ),
    Phrase(
      jpName: "Dō itte imasu ka?",
      enName: "How are you feeling?",
      audio: "sounds/phrases/how_are_you_feeling.wav",
    ),
    Phrase(
      jpName: "Anime ga daisuki desu",
      enName: "I love anime",
      audio: "sounds/phrases/i_love_anime.wav",
    ),
    Phrase(
      jpName: "Puroguramingu ga daisuki desu",
      enName: "I love programming",
      audio: "sounds/phrases/i_love_programming.wav",
    ),
    Phrase(
      jpName: "Puroguramingu wa kantandesu",
      enName: "Programming is easy",
      audio: "sounds/phrases/programming_is_easy.wav",
    ),
    Phrase(
      jpName: "Namae wa nandesu ka?",
      enName: "What is your name?",
      audio: "sounds/phrases/what_is_your_name.wav",
    ),
    Phrase(
      jpName: "Doko ni iku no?",
      enName: "Where are you going?",
      audio: "sounds/phrases/where_are_you_going.wav",
    ),
    Phrase(
      jpName: "Hai, ikimasu",
      enName: "Yes, I'm coming",
      audio: "sounds/phrases/yes_im_coming.wav",
    ),
    Phrase(
      jpName: "Kōshin o wasurenaide kudasai",
      enName: "Don't forget to subscribe",
      audio: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff47A5CB),
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Color(0xff49332a),
        title: const Text(
          "Phrases",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, i) {
          return Item(phrase: phrases[i]);
        },
      ),
    );
  }
}