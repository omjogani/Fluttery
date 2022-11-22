import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';
import 'package:fluttery/screens/home/components/footer.dart';
import 'package:fluttery/screens/home/components/tool_card.dart';
import 'package:fluttery/widgets/common_drawer.dart';
import 'package:fluttery/widgets/default_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Fluttery"),
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
                      children: <Widget>[
                        const Text(
                          "Welcome to Fluttery",
                          style: kTitleTextStyle,
                        ),
                        const SizedBox(height: 15.0),
                        const Text(
                          "Collection of tools for faster flutter development, \nUse Tools & Build Perfect Widget for your next Flutter Project.",
                          style: kSubTitleTextStyle,
                        ),
                        const SizedBox(height: 25.0),
                        DefaultButton(
                          buttonText: "Get Started",
                          onPressed: () {},
                        ),
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
            children: <Widget>[
              const Text(
                "Get Access to Tools for Free",
                style: kTitleTextStyle,
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ToolCard(
                    title: "Shadow Generator",
                    description: "generate shadow with just little editing",
                    icon: Icons.design_services,
                    onTap: () {},
                  ),
                  ToolCard(
                    title: "Color Picker",
                    description:
                        "Pick the perfect color for your flutter apps.",
                    icon: Icons.colorize,
                    onTap: () {},
                  ),
                  ToolCard(
                    title: "Image Dimension",
                    description:
                        "Get Image Ratio Based on specific Aspect Ratio.",
                    icon: Icons.image_aspect_ratio_rounded,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              const Footer(),
            ],
          ),
        ],
      ),
      drawer: const CustomCommonDrawer(),
    );
  }
}
