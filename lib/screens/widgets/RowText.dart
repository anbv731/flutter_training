import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  const RowText(this.name, this.body,
      {this.nameSize = 16, this.bodySize = 16, Key? key})
      : super(key: key);
  final String name;
  final String body;
  final double nameSize;
  final double bodySize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(name + ': ', style: TextStyle(fontSize: nameSize)),
          Text(body, style: TextStyle(fontSize: bodySize))
        ],
      ),
    );
  }
}