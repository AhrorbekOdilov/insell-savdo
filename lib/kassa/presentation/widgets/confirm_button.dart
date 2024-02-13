import 'package:flutter/material.dart';

class KassaConfirmButton extends StatelessWidget {
  const KassaConfirmButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: .2, color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Tasdiqlash",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Icon(
                Icons.done_all,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
