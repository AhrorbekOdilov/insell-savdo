import 'package:flutter/material.dart';

class KassatableRowDiscountTextfield extends StatefulWidget {
  const KassatableRowDiscountTextfield({super.key});

  @override
  State<KassatableRowDiscountTextfield> createState() =>
      _KassatableRowDiscountTextfieldState();
}

class _KassatableRowDiscountTextfieldState
    extends State<KassatableRowDiscountTextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
              // cursorWidth: 1,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  // vertical: 3,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          print("uppppp");
                        },
                        child: Container(
                          height: 8,
                          width: 10,
                          color: Colors.black12,
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 10,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      InkWell(
                        onTap: () {
                          print("downnnn");
                        },
                        child: Container(
                          height: 8,
                          width: 10,
                          color: Colors.black12,
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: .4,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2),
                    bottomLeft: Radius.circular(2),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2),
                    bottomLeft: Radius.circular(2),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(),
              // borderRadius: BorderRadius.only(

              // ),
            ),
            child: Text(
              "so'm",
              style: TextStyle(
                fontSize: 9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
