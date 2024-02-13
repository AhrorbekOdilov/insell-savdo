import 'package:flutter/material.dart';
import 'package:insell_savdo/kassa/presentation/screens/kassa_screen_desktop.dart';
import 'package:insell_savdo/kassa/presentation/widgets/product_data_row.dart';
import 'package:insell_savdo/kassa/presentation/widgets/title_data_row.dart';
import 'package:insell_savdo/product_model.dart';

class KassaProductsTable extends StatefulWidget {
  final List<String> titles;
  final List<ProductModel> products;

  const KassaProductsTable({
    super.key,
    required this.titles,
    required this.products,
  });

  @override
  State<KassaProductsTable> createState() => _KassaProductsTableState();
}

class _KassaProductsTableState extends State<KassaProductsTable> {
  bool discountOpen = false;
  List<int> ids = [];
  double width = 1265;

  void tabHandler(int id) {
    setState(() {
      if (ids.contains(id)) {
        ids.remove(id);
        if (ids.isEmpty) {
          width += 200;
        }
      } else {
        ids.add(id);
        if (ids.length == 1) {
          width -= 200;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          KassaTitleDataRow(
            titles: widget.titles,
            width: width,
            ids: ids,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...products.map(
                    (product) => KassaProductDataRow(
                      productModel: product,
                      width: width,
                      openDiscount: tabHandler,
                      ids: ids,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
