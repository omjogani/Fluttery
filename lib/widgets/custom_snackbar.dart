import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';

class FlutterySnackBar {
  const FlutterySnackBar({
    required this.context,
    required this.message,
    required this.icon,
  });

  final BuildContext context;
  final String message;
  final IconData icon;

  void customSnackBar() {
    final snackbar = SnackBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.40,
      content: Container(
        // width: MediaQuery.of(context).size.width * 0.40,
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 7.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          color: kPrimaryColor,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0.0, 12.0),
              blurRadius: 16.0,
            )
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(13.0),
              ),
              width: 42.0,
              height: 42.0,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 15.0),
            Text(
              message,
              maxLines: 1,
              overflow: TextOverflow.fade,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,

    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
