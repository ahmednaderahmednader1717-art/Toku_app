import 'package:flutter/material.dart';

// ignore: must_be_immutable  
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 65,
          child: ListTile(
            tileColor: color,
            leading: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                text!,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
