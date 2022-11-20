import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.20,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: kPrimaryButtonColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: kShadowColor,
            offset: Offset(0, 12),
            blurRadius: 16.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Get Started",
            style: kSubTitleTextStyle.copyWith(color:Colors.white),
          ),
          SizedBox(width: 5.0),
          Text(
            "🚀",
            style: TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
