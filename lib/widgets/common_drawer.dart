import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';
import 'package:fluttery/screens/home/components/close_button.dart';
import 'package:fluttery/screens/home/components/drawer_list_tile.dart';

class CustomCommonDrawer extends StatelessWidget {
  const CustomCommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Fluttery",
                  style: kTitleTextStyle,
                ),
                CustomCloseButton(),
              ],
            ),
            Text(
              "Collection of Tools for faster Flutter Development",
              maxLines: 2,
              textAlign: TextAlign.start,
              style: kSubTitleTextStyle.copyWith(fontSize: 16.0),
            ),
            const SizedBox(height: 15.0),
            DrawerListTile(
              icon: Icons.home_rounded,
              text: "Home",
              onTap: () {},
            ),
            DrawerListTile(
              icon: Icons.design_services_rounded,
              text: "Tools",
              onTap: () {},
            ),
            DrawerListTile(
              icon: Icons.settings,
              text: "Settings",
              onTap: () {},
            ),
            DrawerListTile(
              icon: Icons.person_rounded,
              text: "About",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
