import 'package:flutter/material.dart';

class TitleDesktop extends StatelessWidget {
  const TitleDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Savdo".toUpperCase(),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              height: 1,
            ),
          ),
          Container(
            height: 7,
            width: 100,
            color: Color.fromARGB(255, 174, 19, 19),
          )
        ],
      ),
    );
  }
}
