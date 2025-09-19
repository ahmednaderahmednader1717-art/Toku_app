import 'package:flutter/material.dart';
import 'package:toku/components/list_items.dart';
import 'package:toku/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<itemModel> familyMembers = const [
    itemModel(
      image: "assets/images/family_members/family_father.png",
      jpName: "Chichioya",
      enName: "Father",
      audio: "sounds/family_members/father.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_mother.png",
      jpName: "Hahaoya",
      enName: "Mother",
      audio: "sounds/family_members/mother.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_son.png",
      jpName: "Musuko",
      enName: "Son",
      audio: "sounds/family_members/son.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_daughter.png",
      jpName: "Musume",
      enName: "Daughter",
      audio: "sounds/family_members/daughter.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_grandfather.png",
      jpName: "Ojīsan",
      enName: "Grandfather",
      audio: "sounds/family_members/grand father.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_grandmother.png",
      jpName: "Obāsan",
      enName: "Grandmother",
      audio: "sounds/family_members/grand mother.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_older_brother.png",
      jpName: "Ani",
      enName: "Older Brother",
      audio: "sounds/family_members/older bother.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_older_sister.png",
      jpName: "Ane",
      enName: "Older Sister",
      audio: "sounds/family_members/older sister.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_younger_brother.png",
      jpName: "Otōto",
      enName: "Younger Brother",
      audio: "sounds/family_members/younger brohter.wav",
    ),
    itemModel(
      image: "assets/images/family_members/family_younger_sister.png",
      jpName: "Imōto",
      enName: "Younger Sister",
      audio: "sounds/family_members/younger sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff548032),
      appBar: AppBar(
        toolbarHeight: 64,
        backgroundColor: Color(0xff49332a),
        title: const Text(
          "Family Members",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, i) {
          return Item(familyMember: familyMembers[i],);
        },

      ),
    );
  }
}