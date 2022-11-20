import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';
import 'package:fluttery/widgets/default_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryButtonColor,
        title: Text("Fluttery"),
        elevation: 50.0,
        shadowColor: kShadowColor,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.75,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome to Fluttery",
                          style: kTitleTextStyle,
                        ),
                        SizedBox(height: 15.0),
                        Text(
                          "Create your Widget by designing here with easy customization and working with easy way",
                          style: kSubTitleTextStyle,
                        ),
                        SizedBox(height: 25.0),
                        DefaultButton(),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset("assets/images/hero_image.png"),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Get Access to Tools for Free",
                style: kTitleTextStyle,
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ToolCard(
                    title: "Shadow Generator",
                    description: "generate shadow with just little editing",
                    icon: Icons.design_services,
                  ),
                  ToolCard(
                    title: "Color Picker",
                    description:
                        "Pick the perfect color for your flutter apps.",
                    icon: Icons.colorize,
                  ),
                  ToolCard(
                    title: "Image Diamention",
                    description:
                        "Get Image Ratio Based on specific Aspect Ratio.",
                    icon: Icons.image_aspect_ratio_rounded,
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Footer(),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Text("Hello"),
          ],
        ),
      ),
    );
  }
}

class ToolCard extends StatelessWidget {
  const ToolCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });
  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
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

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50.0,
      color: kPrimaryButtonColor,
      alignment: Alignment.center,
      child: Text(
        "Fluttery, Copyright © 2022 Om Jogani All Rights Reserved!!",
        style: kSubTitleTextStyle.copyWith(color: Colors.white),
      ),
    );
  }
}
