import 'package:flutter/material.dart';

class KassaOrderItem extends StatelessWidget {
  final bool selected;

  const KassaOrderItem({
    super.key,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            width: .2,
            color: const Color.fromARGB(255, 174, 19, 19),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: selected
                    ? Colors.transparent
                    : const Color.fromARGB(255, 32, 74, 110),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(9),
                  bottomLeft: Radius.circular(9),
                ),
              ),
              child: Text(
                selected ? "Buyurtma-1" : "№3",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  color: selected ? Colors.black : Colors.white,
                ),
              ),
            ),
            Container(
              width: .4,
              color: Colors.white,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 174, 19, 19),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Icon(
                  Icons.delete_outline_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
