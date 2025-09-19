import 'package:flutter/material.dart';
import 'package:toku/components/Category_item.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/familymembers_page.dart';
import 'package:toku/screens/Phrases_page.dart';
import 'Numbers_Page.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffff4d9),
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Color(0xff49332a),
          title: const Text(
            "Tuko",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        body: Flexible(
          child: Column(
            children: [
              Category(
                text: 'Numbers',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return NumbersPage();
                      },
                    ),
                  );
                },
                color: Color(0xfff99531),
              ),
              Category(text: 'Family Members',
                color: Color(0xff548032),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return FamilyMembersPage();
                      },
                    ),
                  );
                },
              ),
              Category(text: 'Colors',
                color: Color(0xff7d40a2),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ColorsPage();
                      },
                    ),
                  );
                },
                ),
              Category(text: 'Phrases', 
              color: Color(0xff47A5CB),
              onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return PhrasesPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
