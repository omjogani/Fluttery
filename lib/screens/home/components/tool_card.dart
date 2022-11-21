import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';

class ToolCard extends StatelessWidget {
  const ToolCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
  });
  final String title;
  final String description;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          width: size.width * 0.20,
          height: size.width * 0.20,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 16.0,
              ),
            ],
          ),
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Icon(
                    icon,
                    color: kPrimaryButtonColor,
                    size: 55.0,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListView(
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: kSubTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w700, fontSize: 22.0),
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: kSubTitleTextStyle.copyWith(fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
