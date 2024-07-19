import 'package:demo/config/colors.dart';
import 'package:demo/config/constants.dart';
import 'package:demo/config/strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowDialog extends StatefulWidget {
  const ShowDialog({super.key});

  @override
  State<ShowDialog> createState() => _ShowDialogState();
}

class _ShowDialogState extends State<ShowDialog> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return AlertDialog(
      backgroundColor: AppColors.greyLight,
      actionsPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 50,
      ),
      actionsOverflowAlignment: OverflowBarAlignment.start,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;

          return SizedBox(
            height: height - 10,
            width: screenWidth > 950 ? width - 400 : width - 50,
            child: SizedBox(
              height: 100.sp,
              width: 50.w,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: screenWidth > 950 ? 150 : 25.w,
                            width: screenWidth > 950 ? 150 : 25.w,
                            child: Image.asset(
                              AppConstants.userProfile,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              headingText("Mohit Panchal"),
                              SizedBox(
                                height: 5,
                              ),
                              Text("7💲/hour",
                                  style: TextStyle(
                                    fontSize: 1.8.h,
                                    fontWeight: FontWeight.w600,
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        platforms('assets/icons/upwork.png', 'Upwork',
                            AppConstants.upwork, screenWidth),
                        SizedBox(
                          height: 15,
                        ),
                        platforms('assets/icons/fiverr.png', 'Fiverr',
                            AppConstants.fiveer, screenWidth),
                        SizedBox(
                          height: 15,
                        ),
                        platforms('assets/icons/freelancer.png', 'Freelancer',
                            AppConstants.freelancer, screenWidth),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingText('Custom'),
                        SizedBox(
                          height: 15,
                        ),
                        leadingText('YEARS OF EXPERIENCE'),
                        SizedBox(
                          height: 5,
                        ),
                        descText('0 - 2.5+ Years'),
                        SizedBox(
                          height: 15,
                        ),
                        leadingText('LANGUAGE'),
                        SizedBox(
                          height: 5,
                        ),
                        descText('English ,Hindi')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headingText('Introduction'),
                        SizedBox(
                          height: 15,
                        ),
                        descText(GlobalStrings.introduction)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  headingText(String s) {
    return Text(
      s,
      style: TextStyle(fontSize: 2.2.h, fontWeight: FontWeight.bold),
    );
  }

  leadingText(String s) {
    return Text(
      s,
      style: TextStyle(
          fontSize: 1.8.h,
          fontWeight: FontWeight.w600,
          color: AppColors.mainColor),
    );
  }

  descText(String s) {
    return Text(
      s,
      style: TextStyle(fontSize: 1.5.h, fontWeight: FontWeight.w300),
    );
  }

  platforms(icon, name, link, screenWidth) {
    return Row(
      children: [
        Image.asset(
          icon,
          height: 5.h,
          width: 5.w,
          color: Colors.black,
        ),
        SizedBox(
          width: 5.w,
        ),
        ElevatedButton(
            style: ButtonStyle(
                minimumSize: WidgetStatePropertyAll(Size(
                    screenWidth > 950 ? 150 : 3.w,
                    screenWidth > 950 ? 50 : 7.w)),
                elevation: WidgetStatePropertyAll(4),
                backgroundColor: WidgetStatePropertyAll(AppColors.mainColor)),
            onPressed: () {
              if (name == 'Upwork') {
                launch(AppConstants.upwork);
              } else if (name == 'freelancer') {
                launch(AppConstants.freelancer);
              } else {
                launch(AppConstants.fiveer);
              }
            },
            child: Text(
              name,
              style: TextStyle(fontSize: 1.8.h, color: Colors.white),
            )),
      ],
    );
  }
}
