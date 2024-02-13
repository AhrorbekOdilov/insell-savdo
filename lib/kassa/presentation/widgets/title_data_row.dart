import 'package:flutter/material.dart';

class KassaTitleDataRow extends StatefulWidget {
  final List<String> titles;
  final List<int> ids;
  final double width;

  const KassaTitleDataRow({
    super.key,
    this.titles = const [],
    required this.ids,
    required this.width,
  });

  @override
  State<KassaTitleDataRow> createState() => _KassaTitleDataRowState();
}

class _KassaTitleDataRowState extends State<KassaTitleDataRow> {
  double width = 1265;
  double height = 30;
  @override
  Widget build(BuildContext context) {
    width = widget.width;

    return Column(
      children: [
        horizontalDivider(),
        Row(
          children: [
            verticalDivider(),
            _buildValueCell(40, height, _buildTitles()[0]),
            verticalDivider(),
            _buildValueCell(width * .25, height, _buildTitles()[1]),
            verticalDivider(),
            _buildValueCell(width * .19, height, _buildTitles()[2]),
            verticalDivider(),
            _buildValueCell(width * .19, height, _buildTitles()[3]),
            verticalDivider(),
            GestureDetector(
              onTap: () {},
              child: _buildValueCell(
                widget.ids.isNotEmpty ? 250 : height,
                height,
                Container(),
              ),
            ),
            verticalDivider(),
            _buildValueCell(width * .12, height, _buildTitles()[4]),
            verticalDivider(),
            Expanded(
              child: _buildValueCell(
                width,
                height,
                _buildTitles()[5],
              ),
            ),
            verticalDivider(),
          ],
        ),
        horizontalDivider(),
      ],
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

  Widget _buildValueCell(
    double width,
    double height,
    Widget child,
  ) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: height,
      width: width,
      alignment: Alignment.center,
      child: child,
    );
  }

  List<Widget> _buildTitles() {
    return widget.titles.map(
      (title) {
        return Container(
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              height: 1,
              fontWeight: FontWeight.w400,
            ),
          ),
        );
      },
    ).toList();
  }
}
