import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50.0,
      color: kPrimaryColor,
      alignment: Alignment.center,
      child: Text(
        "Fluttery, Copyright © 2022 Om Jogani All Rights Reserved!!",
        style: kSubTitleTextStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
