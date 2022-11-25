import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';

class FailMessage extends StatelessWidget {
  const FailMessage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Center(
            child: Container(
              height: size.width * 0.08,
              width: size.width * 0.18,
              padding: const EdgeInsets.all(3.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(72, 76, 82, 0.16),
                    offset: Offset(0, 12),
                    blurRadius: 16.0,
                  ),
                ],
              ),
              child: const Text(
                "Fail!",
                style: kSubTitleTextStyle,
              ),
            ),
          ),
        ),
        Positioned(
          top: 00.0,
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: kPrimaryPink,
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(72, 76, 82, 0.16),
                    offset: Offset(0, 12),
                    blurRadius: 16.0,
                  ),
                ],
              ),
              child: const Icon(
                Icons.check_circle_rounded,
                size: 40.0,
                color: Colors.redAccent,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
