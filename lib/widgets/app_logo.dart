import 'package:flutter/material.dart';
import 'package:kite_zerodha/utils/utils.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset('assets/app-logo.png',
          height: logo['height']!.toDouble(),
          width: logo['width']!.toDouble()),
    );
  }
}
