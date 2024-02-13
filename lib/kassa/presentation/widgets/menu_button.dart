import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 50,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 174, 19, 19),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Icon(Icons.menu),
    );
  }
}
