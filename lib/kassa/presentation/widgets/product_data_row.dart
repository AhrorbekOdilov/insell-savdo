import 'package:flutter/material.dart';
import 'package:insell_savdo/kassa/presentation/widgets/table_row_discount_textfield.dart';
import 'package:insell_savdo/kassa/presentation/widgets/table_row_textfield.dart';
import 'package:insell_savdo/product_model.dart';

class KassaProductDataRow extends StatefulWidget {
  final ProductModel productModel;
  final double width;
  final Function(int)? openDiscount;
  final List<int> ids;

  const KassaProductDataRow({
    super.key,
    required this.productModel,
    required this.width,
    required this.openDiscount,
    required this.ids,
  });

  @override
  State<KassaProductDataRow> createState() => _KassaProductDataRowState();
}

class _KassaProductDataRowState extends State<KassaProductDataRow> {
  // double width = 1265;
  double height = 30;
  bool discountOpen = false;
  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    double width = widget.width;
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          hovered = value;
          print("hovered");
        });
      },
      child: Container(
        // height: height,
        width: MediaQuery.sizeOf(context).width,
        color: hovered ? Colors.grey.shade200 : Colors.transparent,
        // color: Colors.red,
        child: Column(
          children: [
            Row(
              children: [
                verticalDivider(),
                _buildValueCell(40, height, _buildProductCells()[0]),
                verticalDivider(),
                _buildValueCell(width * .25, height, _buildProductCells()[1]),
                verticalDivider(),
                _buildValueCell(width * .19, height, _buildProductCells()[2]),
                verticalDivider(),
                _buildValueCell(width * .19, height, _buildProductCells()[3]),
                verticalDivider(),
                GestureDetector(
                  onTap: () {},
                  child: _buildValueCell(
                    widget.ids.isNotEmpty ? 250 : height,
                    // widget.ids.contains(widget.productModel.id) ? 200 : height,
                    height,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.ids.contains(widget.productModel.id))
                          const Expanded(
                            child: Row(
                              children: [
                                Expanded(
                                    child: KassatableRowDiscountTextfield()),
                                Expanded(
                                    child: KassatableRowDiscountTextfield()),
                              ],
                            ),
                          ),
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: ElevatedButton(
                            onPressed: () {
                              if (widget.openDiscount != null) {
                                widget.openDiscount!(widget.productModel.id);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(3),
                                  bottomRight: Radius.circular(3),
                                ),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 42, 11, 218),
                            ),
                            child: Icon(
                              widget.ids.contains(widget.productModel.id)
                                  ? Icons.arrow_back_ios_outlined
                                  : Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        if (widget.ids.isNotEmpty &&
                            !widget.ids.contains(widget.productModel.id))
                          Spacer(),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          widget.ids.contains(widget.productModel.id) ? 3 : 0,
                    ),
                  ),
                ),
                verticalDivider(),
                _buildValueCell(width * .12, height, _buildProductCells()[4]),
                verticalDivider(),
                Expanded(
                  child: _buildValueCell(
                    width,
                    height,
                    _buildProductCells()[5],
                  ),
                ),
                verticalDivider(),
              ],
            ),
            // horizontalDivider(),
            horizontalDivider(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildProductCells() {
    return List.generate(
      7,
      (index) => Container(
        margin: const EdgeInsets.all(3),
        // padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
        ),
        child: index == 0
            ? Text(widget.productModel.id.toString())
            : index == 2
                ? KassaTableRowTextfield(subfix: "dona")
                : index == 3
                    ? KassaTableRowTextfield(subfix: "so'm")
                    : index == 4
                        ? Text(
                            "${widget.productModel.price!} so'm",
                            style: const TextStyle(
                              fontSize: 12,
                              height: 1,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 24, 173, 8),
                            ),
                          )
                        : index == 5
                            ? _buildButtons()
                            : Text(
                                widget.productModel.name!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  height: 1,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
      ),
    );
  }

  Widget _buildButtons() {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            onPressed: () {},
            child: Icon(
              Icons.delete,
              size: 20,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildValueCell(
    double width,
    double height,
    Widget child, {
    EdgeInsets? padding,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: padding,
      height: height,
      width: width,
      alignment: Alignment.center,
      child: child,
    );
  }

  Widget verticalDivider() {
    return Container(
      height: height,
      width: 0.5,
      color: Colors.black,
    );
  }

  Widget horizontalDivider() {
    return const Divider(
      height: 0.5,
      thickness: 0.5,
      color: Colors.black,
    );
  }
}
