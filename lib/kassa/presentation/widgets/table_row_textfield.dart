import 'package:flutter/material.dart';

class KassaTableRowTextfield extends StatefulWidget {
  final String subfix;

  const KassaTableRowTextfield({
    super.key,
    required this.subfix,
  });

  @override
  State<KassaTableRowTextfield> createState() => _KassaTableRowTextfieldState();
}

class _KassaTableRowTextfieldState extends State<KassaTableRowTextfield> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        child: const Icon(
                          Icons.arrow_drop_up,
                          size: 10,
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    InkWell(
                      onTap: () {
                        print("downnnn");
                      },
                      child: Container(
                        height: 8,
                        width: 10,
                        color: Colors.black12,
                        child: const Icon(
                          Icons.arrow_drop_down,
                          size: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: .4,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(2),
                  bottomLeft: Radius.circular(2),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
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
          width: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(2),
              bottomRight: Radius.circular(2),
            ),
            border: Border.all(
              width: 0.4,
            ),
          ),
          child: Text(
            widget.subfix,
            style: const TextStyle(
              fontSize: 14,
              // fontWeight: FontWeight.w300,
            ),
          ),
        )
      ],
    );
  }
}
