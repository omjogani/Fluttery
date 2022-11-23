import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';

class CopyCodeButton extends StatefulWidget {
  const CopyCodeButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    required this.icon,
  });
  final Function onPressed;
  final String buttonText;
  final IconData icon;

  @override
  State<CopyCodeButton> createState() => _CopyCodeButtonState();
}

class _CopyCodeButtonState extends State<CopyCodeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () => widget.onPressed(),
      onHover: (isHover) {
        setState(() {
          isHovered = isHover;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: size.width * 0.15,
        height: size.height * 0.08,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: isHovered ? kShadowColor : Colors.transparent,
              offset: const Offset(0, 12),
              blurRadius: 16.0,
            )
          ],
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: Colors.white,
            ),
            const SizedBox(width: 5.0),
            Text(
              widget.buttonText,
              style: kSubTitleTextStyle.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
