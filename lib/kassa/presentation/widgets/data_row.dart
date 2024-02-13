// import 'package:flutter/material.dart';
// import 'package:insell_savdo/product_model.dart';

// class KassaTableRow extends StatefulWidget {
//   final bool isTitle;
//   final List<String>? titles;
//   final List<int> ids;
//   final ProductModel? product;
//   final Function(int)? discounttapHendler;
//   final bool discountOpen;
//   final double width;

//   const KassaTableRow({
//     super.key,
//     required this.ids,
//     required this.width,
//     this.titles,
//     this.product,
//     this.discounttapHendler,
//     this.discountOpen = false,
//     this.isTitle = false,
//   });

//   @override
//   State<KassaTableRow> createState() => _KassaTableRowState();
// }

// class _KassaTableRowState extends State<KassaTableRow> {
//   bool hovered = false;
//   double height = 30;
//   double width = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     width = widget.width;
//     // print(width);
//     return InkWell(
//       onTap: widget.isTitle ? null : () {},
//       onHover: (value) {
//         if (widget.isTitle) return;
//         setState(() {
//           hovered = value;
//         });
//       },
//       child: Container(
//         height: height,
//         width: MediaQuery.sizeOf(context).width,
//         decoration: BoxDecoration(
//           color: hovered ? Colors.grey.shade200 : Colors.transparent,
//         ),
//         child: Column(
//           children: [
//             if (widget.titles != null && widget.titles!.isNotEmpty) titles(),
//             if (widget.product != null) values(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget verticalDivider() {
//     return Container(
//       height: height,
//       width: 0.5,
//       color: widget.isTitle ? Colors.black : Colors.black54,
//     );
//   }

//   Widget horizontalDivider() {
//     return Divider(
//       height: 0.5,
//       thickness: 0.5,
//       color: widget.isTitle ? Colors.black : Colors.black54,
//     );
//   }

//   Widget titles() {
//     return Column(
//       children: [
//         if (widget.isTitle) horizontalDivider(),
//         Row(
//           children: [
//             verticalDivider(),
//             _buildValueCell(40, height, _buildTitles()[0]),
//             verticalDivider(),
//             _buildValueCell(width * .3, height, _buildTitles()[1]),
//             verticalDivider(),
//             _buildValueCell(width * .19, height, _buildTitles()[2]),
//             verticalDivider(),
//             _buildValueCell(width * .19, height, _buildTitles()[3]),
//             verticalDivider(),
//             GestureDetector(
//               onTap: () {},
//               child: _buildValueCell(
//                 widget.ids.isNotEmpty ? 200 : height,
//                 height,
//                 Container(),
//               ),
//             ),
//             verticalDivider(),
//             _buildValueCell(width * .12, height, _buildTitles()[4]),
//             verticalDivider(),
//             Expanded(
//               child: _buildValueCell(
//                 width,
//                 height,
//                 _buildTitles()[5],
//               ),
//             ),
//             verticalDivider(),
//           ],
//         ),
//         horizontalDivider(),
//       ],
//     );
//   }

//   List<Widget> _buildTitles() {
//     return widget.titles!.map(
//       (title) {
//         return Container(
//           margin: const EdgeInsets.all(3),
//           padding: const EdgeInsets.all(3),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(2),
//           ),
//           child: Text(
//             title,
//             style: const TextStyle(
//               fontSize: 14,
//               height: 1,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         );
//       },
//     ).toList();
//   }

//   Widget _buildValueCell(
//     double width,
//     double height,
//     Widget child,
//   ) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 200),
//       height: height,
//       width: width,
//       alignment: Alignment.center,
//       child: child,
//     );
//   }

//   List<Widget> _buildValues(
//       // ProductModel productModel
//       ) {
//     return List.generate(
//       7,
//       (index) => Container(
//         // duration: const Duration(milliseconds: 300),
//         margin: const EdgeInsets.all(3),
//         padding: const EdgeInsets.all(3),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(2),
//         ),
//         child: Text(
//           widget.product!.name!,
//           style: const TextStyle(
//             fontSize: 14,
//             height: 1,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget values() {
//     return Column(
//       children: [
//         // if (widget.isTitle) horizontalDivider(),
//         Row(
//           children: [
//             verticalDivider(),
//             _buildValueCell(40, height, _buildValues()[0]),
//             verticalDivider(),
//             _buildValueCell(width * .3, height, _buildValues()[1]),
//             verticalDivider(),
//             _buildValueCell(width * .19, height, _buildValues()[2]),
//             verticalDivider(),
//             _buildValueCell(width * .19, height, _buildValues()[3]),
//             verticalDivider(),
//             GestureDetector(
//               onTap: () {},
//               child: _buildValueCell(
//                 widget.ids.isNotEmpty ? 200 : height,
//                 height,
//                 Container(),
//               ),
//             ),
//             verticalDivider(),
//             _buildValueCell(width * .12, height, _buildValues()[4]),
//             verticalDivider(),
//             Expanded(
//               child: _buildValueCell(
//                 width,
//                 height,
//                 _buildValues()[5],
//               ),
//             ),
//             verticalDivider(),
//           ],
//         ),
//         horizontalDivider(),
//       ],
//     );
//   }

//   Widget _buildTableRowTextField() {
//     return Row(
//       children: [
//         Expanded(
//           child: TextFormField(
//             style: const TextStyle(
//               fontSize: 10,
//               fontWeight: FontWeight.w300,
//             ),
//             // cursorWidth: 1,
//             decoration: InputDecoration(
//               contentPadding: const EdgeInsets.symmetric(
//                 horizontal: 5,
//                 // vertical: 3,
//               ),
//               suffixIcon: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 2),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                       onTap: () {
//                         print("uppppp");
//                       },
//                       child: Container(
//                         height: 8,
//                         width: 10,
//                         color: Colors.black12,
//                         child: Icon(
//                           Icons.arrow_drop_up,
//                           size: 10,
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 2),
//                     InkWell(
//                       onTap: () {
//                         print("downnnn");
//                       },
//                       child: Container(
//                         height: 8,
//                         width: 10,
//                         color: Colors.black12,
//                         child: Icon(
//                           Icons.arrow_drop_down,
//                           size: 10,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   width: .4,
//                   color: Colors.red,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(2),
//                   bottomLeft: Radius.circular(2),
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(
//                   color: Colors.red,
//                   width: 1.2,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(2),
//                   bottomLeft: Radius.circular(2),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           height: 30,
//           width: 50,
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(2),
//               bottomRight: Radius.circular(2),
//             ),
//             border: Border.all(
//               width: 0.4,
//             ),
//           ),
//           child: Text(
//             "dona",
//             style: TextStyle(
//               fontSize: 14,
//               // fontWeight: FontWeight.w300,
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
