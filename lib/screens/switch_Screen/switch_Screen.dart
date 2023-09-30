import 'package:figma_app1/constants/app_images.dart';
import 'package:figma_app1/constants/app_themcolor.dart';
import 'package:figma_app1/custom_widget/CustomButton.dart';
import 'package:figma_app1/screens/Home_Screen/home_screen.dart';
import 'package:figma_app1/screens/switch_Screen/string.dart';
import 'package:flutter/material.dart';

import '../../bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int page_no = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final controller = PageController(initialPage: 0);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appColor.themColor,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: height * 0.07),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      print(index);
                      setState(() {
                        page_no = index;
                      });
                    },
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                SplashString.heading1,
                                style: TextStyle(
                                    color: appColor.Whitegrey,
                                    fontSize: width * 0.08,
                                    fontWeight: FontWeight.w600),
                              ),
                              Positioned(
                                  left: 110,
                                  bottom: 6,
                                  child: Image.asset(AppImages.Emoji)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            SplashString.para1,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: appColor.Whitegrey,
                              fontSize: width * 0.04,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                SplashString.heading2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: appColor.Whitegrey,
                                    fontSize: width * 0.08),
                              ),
                              Positioned(
                                  left: 110,
                                  bottom: 10,
                                  child: Image.asset(AppImages.Emoji)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            SplashString.para2,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: appColor.Whitegrey,
                              fontSize: width * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // SizedBox(
                //   height: 60,
                // ),
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                      // width: width * 0.2,
                      child: Chip(
                        label: Text(''),
                        backgroundColor:
                            page_no == 0 ? appColor.Whitegrey : appColor.grey,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                      child: Chip(
                        label: Text(''),
                        backgroundColor:
                            page_no == 1 ? appColor.Whitegrey : appColor.grey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Image.asset(
                      AppImages.ImageIcon,
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Custombutton(
                        buttontextFontSize: 30,
                        buttonText: 'Get Started',
                        buttonTextColor: Colors.black,
                        buttonColor: appColor.Whitegrey,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
