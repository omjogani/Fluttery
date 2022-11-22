import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';

class CustomCloseButton extends StatefulWidget {
  const CustomCloseButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomCloseButton> createState() => _CustomCloseButtonState();
}

class _CustomCloseButtonState extends State<CustomCloseButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      onHover: (isHoverValue) {
        setState(() {
          isHover = isHoverValue;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        height: 30.0,
        width: 30.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: isHover ? kShadowColor : Colors.transparent,
              offset: const Offset(0, 12),
              blurRadius: 16.0,
            ),
          ],
        ),
        child: const Icon(
          Icons.close_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
