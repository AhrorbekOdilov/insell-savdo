import 'package:flutter/material.dart';

class KassaSearchBar extends StatelessWidget {
  const KassaSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.sizeOf(context).width * .6,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: const TextStyle(
                fontSize: 16,
                height: 1,
              ),
              cursorWidth: 1,
              decoration: InputDecoration(
                hintText: "Maxsulot izlash",
                hintStyle: const TextStyle(
                  fontSize: 16,
                  height: 1,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(3),
                    bottomLeft: Radius.circular(3),
                  ),
                  borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3),
                    bottomLeft: Radius.circular(3),
                  ),
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(3),
                  bottomRight: Radius.circular(3),
                ),
                color: Colors.green,
              ),
              child: const Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}
