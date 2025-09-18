import 'package:flutter/material.dart';

import 'Home_page.dart';

void main() {
  runApp(tokuApp());
}

class tokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
