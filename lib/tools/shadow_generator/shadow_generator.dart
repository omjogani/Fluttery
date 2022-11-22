import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/constants/text_styles.dart';
import 'package:fluttery/widgets/common_drawer.dart';

class ShadowGenerator extends StatefulWidget {
  const ShadowGenerator({super.key});

  @override
  State<ShadowGenerator> createState() => _ShadowGeneratorState();
}

class _ShadowGeneratorState extends State<ShadowGenerator> {
  Color boxColor = Colors.white;
  Color shadowColor = kShadowColor;
  double offsetX = 0.0;
  double offsetY = 12.0;
  double blurRadius = 16.0;
  double borderRadius = 10.0;

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
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Center(
                    child: Text(
                      "Shadow Generator",
                      style: kTitleTextStyle,
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SingleChildScrollView(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ExpansionPanelList.radio(
                            dividerColor: Colors.white,
                            elevation: 1.0,
                            expandedHeaderPadding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            animationDuration:
                                const Duration(milliseconds: 500),
                            children: <ExpansionPanelRadio>[
                              ExpansionPanelRadio(
                                backgroundColor: Colors.white54,
                                canTapOnHeader: true,
                                value: "Shadow Customization",
                                headerBuilder: (context, isExpanded) {
                                  return Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: const Text(
                                      "Shadow Customization",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  );
                                },
                                body: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.0,
                                                top: 5.0,
                                              ),
                                              child: Text(
                                                "Offset X-Axis",
                                                textAlign: TextAlign.start,
                                                style: kSubTitleTextStyle,
                                              ),
                                            ),
                                            Slider(
                                              value: offsetX,
                                              max: 50,
                                              activeColor: kPrimaryColor,
                                              inactiveColor: kPrimaryColor
                                                  .withOpacity(0.5),
                                              label: offsetX.round().toString(),
                                              onChanged: (double newOffsetX) {
                                                setState(() {
                                                  offsetX = newOffsetX;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.0,
                                                top: 5.0,
                                              ),
                                              child: Text(
                                                "Offset Y-Axis",
                                                textAlign: TextAlign.start,
                                                style: kSubTitleTextStyle,
                                              ),
                                            ),
                                            Slider(
                                              value: offsetY,
                                              max: 50,
                                              activeColor: kPrimaryColor,
                                              inactiveColor: kPrimaryColor
                                                  .withOpacity(0.5),
                                              label: offsetY.round().toString(),
                                              onChanged: (double newOffsetY) {
                                                setState(() {
                                                  offsetY = newOffsetY;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ExpansionPanelRadio(
                                backgroundColor: Colors.white54,
                                canTapOnHeader: true,
                                value: "Border Radius",
                                headerBuilder: (context, isExpanded) {
                                  return Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: const Text(
                                      "Border Radius",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  );
                                },
                                body: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.0,
                                                top: 5.0,
                                              ),
                                              child: Text(
                                                "Border Radius",
                                                textAlign: TextAlign.start,
                                                style: kSubTitleTextStyle,
                                              ),
                                            ),
                                            Slider(
                                              value: borderRadius,
                                              max: 100,
                                              activeColor: kPrimaryColor,
                                              inactiveColor: kPrimaryColor
                                                  .withOpacity(0.5),
                                              label: borderRadius
                                                  .round()
                                                  .toString(),
                                              onChanged:
                                                  (double newBorderRadius) {
                                                setState(() {
                                                  borderRadius =
                                                      newBorderRadius;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              ExpansionPanelRadio(
                                backgroundColor: Colors.white54,
                                canTapOnHeader: true,
                                value: "Shadow Customization3",
                                headerBuilder: (context, isExpanded) {
                                  return Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0,
                                    ),
                                    child: const Text(
                                      "Shadow Customization",
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  );
                                },
                                body: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            const Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.0,
                                                top: 5.0,
                                              ),
                                              child: Text(
                                                "Offset X-Axis",
                                                textAlign: TextAlign.start,
                                                style: kSubTitleTextStyle,
                                              ),
                                            ),
                                            Slider(
                                              value: offsetX,
                                              max: 50,
                                              activeColor: kPrimaryColor,
                                              inactiveColor: kPrimaryColor
                                                  .withOpacity(0.5),
                                              label: offsetX.round().toString(),
                                              onChanged: (double newOffsetX) {
                                                setState(() {
                                                  offsetX = newOffsetX;
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                height: size.height * 0.25,
                width: size.width * 0.30,
                decoration: BoxDecoration(
                  color: boxColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: shadowColor,
                      offset: Offset(offsetX, offsetY),
                      blurRadius: blurRadius,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomCommonDrawer(),
    );
  }
}
