import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';
import 'package:fluttery/screens/pre_built_widgets/widgets/credit_card.dart';
import 'package:fluttery/screens/pre_built_widgets/widgets/fail_message.dart';
import 'package:fluttery/screens/pre_built_widgets/widgets/profile_view.dart';
import 'package:fluttery/screens/pre_built_widgets/widgets/success_message.dart';
import 'package:fluttery/widgets/common_drawer.dart';

class PreBuiltWidgets extends StatefulWidget {
  const PreBuiltWidgets({super.key});

  @override
  State<PreBuiltWidgets> createState() => _PreBuiltWidgetsState();
}

class _PreBuiltWidgetsState extends State<PreBuiltWidgets> {
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
      body: Column(
        children: <Widget>[
          const Center(
            child: Text(
              "Pre-Built Widget",
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: GridView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: MediaQuery.of(context).size.width > 480 ? 4 : 3,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
              ),
              children: [
                PreBuiltWidgetCard(
                  widget: ProfileView(),
                  name: "Profile View",
                  fileName: "profile_view.dart",
                ),
                PreBuiltWidgetCard(
                  widget: SuccessMessage(),
                  name: "Success Message",
                  fileName: "success_message.dart",
                ),
                PreBuiltWidgetCard(
                  widget: FailMessage(),
                  name: "Fail Message",
                  fileName: "fail_message.dart",
                ),
                PreBuiltWidgetCard(
                  widget: CreditCard(),
                  name: "Credit Card",
                  fileName: "credit_card.dart",
                ),
                PreBuiltWidgetCard(
                  widget: ProfileView(),
                  name: "Profile View",
                  fileName: "profile_view.dart",
                ),
                PreBuiltWidgetCard(
                  widget: ProfileView(),
                  name: "Profile View",
                  fileName: "profile_view.dart",
                ),
                
              ],
            ),
          )
        ],
      ),
      drawer: const CustomCommonDrawer(),
    );
  }
}

class PreBuiltWidgetCard extends StatelessWidget {
  const PreBuiltWidgetCard({
    super.key,
    required this.widget,
    required this.name,
    required this.fileName,
  });
  final Widget widget;
  final String name;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.10,
      height: size.width * 0.10,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: kPrimaryShadow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 5.0
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: kPrimaryShadow,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 9,
                  child: Text(
                    "🟢 $name",
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: kSubTitleTextStyle.copyWith(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Tooltip(
                          message: "Copy",
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: kBackgroundColor,
                            child: Icon(
                              Icons.copy_rounded,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {},
                        child: const Tooltip(
                          message: "Edit",
                          child: CircleAvatar(
                            radius: 15.0,
                            backgroundColor: kBackgroundColor,
                            child: Icon(
                              Icons.edit_rounded,
                              size: 15.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          widget,
        ],
      ),
    );
  }
}
