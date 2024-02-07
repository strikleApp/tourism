import 'package:flutter/material.dart';
import 'package:techphilia/constants.dart';

class HorizontalLineWidget extends StatelessWidget {
  const HorizontalLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: bgColor,
      thickness: 0.5,
      height: 0,
    );
  }
}
