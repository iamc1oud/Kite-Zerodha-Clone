import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:kite_zerodha/resources/resources.dart';
import 'package:kite_zerodha/utils/utils.dart';
import 'package:kite_zerodha/widgets/app_logo.dart';
import 'package:kite_zerodha/widgets/widgets.dart';

class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);
  late TextTheme theme;

  @override
  Widget build(BuildContext context) {
    theme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EmptyHeight(
              height: size.height * 0.08,
            ),
            AppLogo(),
            EmptyHeight(
              height: size.height * 0.1,
            ),
            Text(
              'Welcome to \nKite by Zerodha',
              style: theme.headline4,
            ),
            EmptyHeight(
              height: size.height * 0.08,
            ),
            loginButton(
                callback: () {},
                title: 'Login to Kite',
                icon: Entypo.login),
            loginButton(
                callback: () {},
                isBottomBorderVisible: true,
                title: 'Continue signup',
                icon: Icons.account_circle_outlined),
            EmptyHeight(
              height: size.height * 0.15,
            ),
            Text('ZERODHA', style: theme.headline5!.copyWith(color: Colors.grey[400]!, letterSpacing: 1.2),),
            EmptyHeight(
              height: 12,
            ),
            Text(
              intro_sub_heading,
              style: theme.caption,
            )
          ],
        ),
      ),
    );
  }

  Widget loginButton(
      {VoidCallback? callback,
      String? title,
      IconData? icon,
      bool isBottomBorderVisible = false}) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 22.0),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(color: Colors.grey[350]!),
                bottom: BorderSide(
                    color: isBottomBorderVisible
                        ? Colors.grey[350]!
                        : Colors.transparent))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title',
              style: theme.bodyText1!.copyWith(wordSpacing: 1.5, ),
            ),
            Icon(icon)
          ],
        ),
      ),
    );
  }
}
