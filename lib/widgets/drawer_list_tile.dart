import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';

class DrawerListTile extends StatefulWidget {
  const DrawerListTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });
  final Function onTap;
  final IconData icon;
  final String text;

  @override
  State<DrawerListTile> createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  Color buttonColor = Colors.white;
  Color textColor = Colors.black;
  Color iconColor = kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      hoverColor: Colors.transparent,
      onHover: (isHover) {
        if (isHover) {
          setState(() {
            buttonColor = kPrimaryColor;
            textColor = Colors.white;
            iconColor = Colors.white;
          });
        } else {
          setState(() {
            buttonColor = Colors.white;
            textColor = Colors.black;
            iconColor = kPrimaryColor;
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              ),
            ],
          ),
          height: 50.0,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Icon(
                  widget.icon,
                  color: iconColor,
                  size: 25.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  widget.text,
                  style: kSubTitleTextStyle.copyWith(color: textColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
