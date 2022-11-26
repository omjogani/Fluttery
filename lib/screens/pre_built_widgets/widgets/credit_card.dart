import 'package:flutter/material.dart';
import 'package:fluttery/constants/text_styles.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25,
      height: size.height * 0.20,
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -50,
            right: -10,
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                gradient: RadialGradient(
                  colors: [
                    Color.fromARGB(255, 150, 128, 84).withOpacity(0.5),
                    Color.fromARGB(255, 150, 128, 84).withOpacity(0.3),
                    Color.fromARGB(255, 150, 128, 84).withOpacity(0.1),
                    Color.fromARGB(255, 150, 128, 84).withOpacity(0.01),
                    // Color.fromARGB(255, 118, 97, 54).withOpacity(0.3),
                    // Color.fromARGB(255, 118, 97, 54).withOpacity(0.1),
                    // Color.fromARGB(255, 118, 97, 54).withOpacity(0.01),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 12.0,
            child: Text(
              "8585 8585 8858",
              style: kSubTitleTextStyle.copyWith(color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 12.0,
            child: SizedBox(
              width: size.width * 0.18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10.0),
                      Text(
                        "CARD HOLDER",
                        style: kSubTitleTextStyle.copyWith(
                            color: Colors.white, fontSize: 10.0),
                      ),
                      Text(
                        "MIKE SMITH",
                        style: kSubTitleTextStyle.copyWith(
                            color: Colors.white, fontSize: 14.0),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 35.0,
                        height: 35.0,
                        child: Image.network(
                          "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png",
                        ),
                      ),
                      Text(
                        "MASTERCARD",
                        style: kSubTitleTextStyle.copyWith(
                            color: Colors.white, fontSize: 8.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
