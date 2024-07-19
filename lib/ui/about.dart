import 'package:demo/ui/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';
import 'responsive_widget.dart';
import '../data/skills.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class About extends StatelessWidget {
  final String _description =
      "I am a dedicated Flutter developer with 2.5 years of hands-on experience in building cross-platform mobile applications. Proficient in Dart programming language and the Flutter framework, I have successfully delivered multiple projects from concept to deployment. My expertise includes UI/UX design implementation, integrating RESTful APIs, and implementing various state management solutions. I am passionate about creating efficient, scalable, and visually appealing mobile apps that enhance user experiences. With a keen eye for detail and a strong commitment to quality, I thrive in collaborative environments where I can contribute my technical skills and creativity to achieve project goals effectively";

  const About({super.key});

  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 100,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  WidgetCircularAnimator(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Container(
                        color: AppColors.greyLight,
                        child: SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.asset(
                            AppConstants.userProfile,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ABOUT ME',
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextTyperAnimation(
                          fade: true,
                          curves: Curves.easeInOut,
                          repeat: false,
                          duration: Duration(seconds: 10),
                          globalKey: GlobalKey(),
                          text: _description,
                          textStyle:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.black.withOpacity(.7),
                                    fontSize: 17,
                                  ),
                          textAlign: TextAlign.left,
                        ),
                        // Text(
                        //   _description,
                        //   style:
                        //       Theme.of(context).textTheme.bodyLarge!.copyWith(
                        //             color: Colors.black.withOpacity(.7),
                        //             fontSize: 17,
                        //           ),
                        //   textAlign: TextAlign.left,
                        // ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            MaterialButton(
                              onPressed: () => showDialog(
                                context: context,
                                builder: (BuildContext context) => ShowDialog(),
                              ),
                              color: AppColors.mainColor,
                              textColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: Text('HIRE ME NOW'),
                            ),
                            const SizedBox(width: 20),
                            MaterialButton(
                              onPressed: _downloadCV,
                              color: AppColors.black,
                              textColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              child: Text('VIEW RESUME'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100),
              SlideInRight(
                  globalKey: GlobalKey(),
                  repeat: false,
                  duration: 1.seconds,
                  child: Text('MY SKILLS', style: AppStyles.title)),
              Container(width: 100, height: 2, color: AppColors.mainColor),
              const SizedBox(height: 3),
              Container(width: 75, height: 2, color: AppColors.mainColor),
              const SizedBox(height: 50),
              RotateInUpLeft(
                globalKey: GlobalKey(),
                repeat: false,
                duration: 1.seconds,
                child: Wrap(
                  spacing: 25,
                  runSpacing: 25,
                  runAlignment: WrapAlignment.spaceBetween,
                  children: SKILLS.map(_buildSkill).toList(),
                ),
              ),
            ],
          ),
        ),
        mobileScreen: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .15,
            vertical: 50,
          ),
          child: Column(
            children: [
              WidgetCircularAnimator(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Container(
                    color: AppColors.greyLight,
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      AppConstants.userProfile,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'ABOUT ME',
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                _description,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black.withOpacity(.7),
                      fontSize: 13,
                    ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              MaterialButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => ShowDialog(),
                ),
                color: AppColors.mainColor,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text('HIRE ME NOW'),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                onPressed: _downloadCV,
                color: AppColors.black,
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Text('VIEW RESUME'),
              ),
              const SizedBox(height: 50),
              SlideInRight(
                  globalKey: GlobalKey(),
                  repeat: false,
                  duration: 1.seconds,
                  child: Text('MY SKILLS', style: AppStyles.title)),
              Container(width: 75, height: 2, color: AppColors.mainColor),
              const SizedBox(height: 3),
              Container(width: 50, height: 2, color: AppColors.mainColor),
              const SizedBox(height: 25),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.spaceBetween,
                children: SKILLS.map(_buildSkill).toList(),
              ),
            ],
          ),
        ),
      );

  void _downloadCV() {
    launch(AppConstants.cv);
  }

  Widget _buildSkill(Skill skill) => Chip(
      label: TextTyperAnimation(
          globalKey: GlobalKey(),
          repeat: false,
          duration: 1.seconds,
          text: skill.name!));
}
