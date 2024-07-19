import 'package:demo/config/strings.dart';
import 'package:demo/ui/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../config/constants.dart';
import '../config/colors.dart';

class Header extends StatefulWidget {
  ScrollController scrollController;
  Header({super.key, required this.scrollController});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isRepeatingAnimation = false;
  @override
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I’m ${GlobalStrings.name}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                GlobalStrings.job,
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  GlobalStrings.description,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                      ),
                ),
              ),
              const SizedBox(height: 30),
              MaterialButton(
                color: AppColors.mainColor,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                onPressed: _downloadCV,
                child: Text('Download CV'),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'I’m ${GlobalStrings.name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  GlobalStrings.job,
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      GlobalStrings.description,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.grey[100],
                            fontSize: 15,
                            height: 1.8,
                          ),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(height: 30),
                MaterialButton(
                  color: AppColors.mainColor,
                  textColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  onPressed: _downloadCV,
                  child: Text('Download CV'),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      );

  void _downloadCV() {
    launch(AppConstants.cv);
  }
}
