import 'package:flutter/material.dart';

class EmptyHeight extends StatelessWidget {
  final double? height;

  const EmptyHeight({Key? key, this.height = 60}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
