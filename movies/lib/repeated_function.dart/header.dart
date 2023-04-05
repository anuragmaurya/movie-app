// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,
            style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
        const Text(
          "View All",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
