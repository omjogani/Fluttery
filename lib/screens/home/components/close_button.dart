import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';

class CloseButton extends StatefulWidget {
  const CloseButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CloseButton> createState() => _CloseButtonState();
}

class _CloseButtonState extends State<CloseButton> {
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
          color: kPrimaryButtonColor,
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
