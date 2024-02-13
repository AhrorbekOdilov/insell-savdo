import 'package:flutter/material.dart';
import 'package:insell_savdo/kassa/presentation/widgets/confirm_button.dart';
import 'package:insell_savdo/kassa/presentation/widgets/menu_button.dart';
import 'package:insell_savdo/kassa/presentation/widgets/order_item.dart';
import 'package:insell_savdo/kassa/presentation/widgets/products_table.dart';
import 'package:insell_savdo/kassa/presentation/widgets/search_bar.dart';
import 'package:insell_savdo/kassa/presentation/widgets/title.dart';
import 'package:insell_savdo/product_model.dart';

class KassaScreenDesktop extends StatelessWidget {
  const KassaScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const MenuButton(),
            SizedBox(height: 10),
            Container(
              height: 50,
              // color: Colors.amber,
              child: Row(
                children: [
                  const TitleDesktop(),
                  const SizedBox(width: 100),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      // color: Colors.green,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.grey.shade300,
                        ),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.add_box_outlined,
                              color: Colors.green,
                            ),
                          ),
                          const Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  KassaOrderItem(),
                                  KassaOrderItem(selected: true),
                                  KassaOrderItem(),
                                  KassaOrderItem(),
                                  KassaOrderItem(),
                                  KassaOrderItem(),
                                  KassaOrderItem(),
                                  KassaOrderItem(),
                                  KassaOrderItem(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const KassaSearchBar(),
                SizedBox(
                  height: 40,
                  width: MediaQuery.sizeOf(context).width * .3,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 42, 11, 218),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                    child: const Text(
                      "Maxsulotlar",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            KassaProductsTable(
              titles: ["№", "Mahsulot", "Hajm", "Narx", "To'lov", ""],
              products: products,
            ),
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "213456 so'm",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(width: 30),
                  KassaConfirmButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<ProductModel> products = [
  ProductModel(id: 1, name: "Olma", quantity: 3, price: 17000),
  ProductModel(id: 2, name: "Uzum", quantity: 3, price: 17000),
  ProductModel(id: 3, name: "Nok", quantity: 3, price: 17000),
  ProductModel(id: 4, name: "Mandarin", quantity: 3, price: 17000),
  ProductModel(id: 5, name: "Gilos", quantity: 3, price: 17000),
  ProductModel(id: 6, name: "Banan", quantity: 3, price: 17000),
  ProductModel(id: 7, name: "Bexi", quantity: 3, price: 17000),
  ProductModel(id: 1, name: "Olma", quantity: 3, price: 17000),
  ProductModel(id: 2, name: "Uzum", quantity: 3, price: 17000),
  ProductModel(id: 3, name: "Nok", quantity: 3, price: 17000),
  ProductModel(id: 4, name: "Mandarin", quantity: 3, price: 17000),
  ProductModel(id: 5, name: "Gilos", quantity: 3, price: 17000),
  ProductModel(id: 6, name: "Banan", quantity: 3, price: 17000),
  ProductModel(id: 7, name: "Bexi", quantity: 3, price: 17000),
  ProductModel(id: 1, name: "Olma", quantity: 3, price: 17000),
  ProductModel(id: 2, name: "Uzum", quantity: 3, price: 17000),
  ProductModel(id: 3, name: "Nok", quantity: 3, price: 17000),
  ProductModel(id: 4, name: "Mandarin", quantity: 3, price: 17000),
  ProductModel(id: 5, name: "Gilos", quantity: 3, price: 17000),
  ProductModel(id: 6, name: "Banan", quantity: 3, price: 17000),
  ProductModel(id: 7, name: "Bexi", quantity: 3, price: 17000),
];
