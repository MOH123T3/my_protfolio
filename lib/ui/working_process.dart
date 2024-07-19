import 'package:demo/ui/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class WorkingProcess extends StatelessWidget {
  const WorkingProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .10,
          vertical: 100,
        ),
        child: Column(
          children: [
            SlideInRight(
                globalKey: GlobalKey(),
                repeat: false,
                duration: 1.seconds,
                child: Text('WORKING PROCESS', style: AppStyles.title)),
            Container(width: 100, height: 2, color: AppColors.mainColor),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.mainColor),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(
                      context,
                      '01.',
                      'assets/icons/planning.png',
                      'Research & Planning',
                      "Identified user needs and defined the project scope statement."),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: __buildProcess(
                      context,
                      '02.',
                      'assets/icons/design.png',
                      'Design',
                      'Created wireframes for the mobile app interface and system architecture diagrams.'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: __buildProcess(
                      context,
                      '03.',
                      'assets/icons/programming.png',
                      'Code',
                      'Developed the mobile app, frontend services, and integrated IoT devices.'),
                ),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildProcess(
                      context,
                      '04.',
                      'assets/icons/testing.png',
                      'Testing',
                      'Conducted testing for all components to ensure a seamless user experience.'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: __buildProcess(
                      context,
                      '05.',
                      'assets/icons/launch.png',
                      'Launch',
                      'Launched the app on the App Store and Google Play, and set up server infrastructure.'),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: __buildProcess(
                      context,
                      '06.',
                      'assets/icons/maintenance.png',
                      'Maintenance',
                      'Provided ongoing support and updates based on user feedback.'),
                ),
                const SizedBox(width: 20),
              ],
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
            RotateInUpLeft(
              globalKey: GlobalKey(),
              repeat: false,
              duration: 1.seconds,
              child: Text(
                'WORKING PROCESS',
                style: AppStyles.title,
                textAlign: TextAlign.center,
              ),
            ),
            Container(width: 75, height: 2, color: AppColors.mainColor),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.mainColor),
            const SizedBox(height: 50),
            __buildProcess(
                context,
                '01.',
                'assets/icons/planning.png',
                'Research & Planning',
                'Identified user needs and defined the project scope.'),
            const SizedBox(height: 10),
            __buildProcess(context, '02.', 'assets/icons/design.png', 'Design',
                'Created wireframes for the mobile app interface and system architecture diagrams.'),
            const SizedBox(height: 10),
            __buildProcess(
                context,
                '03.',
                'assets/icons/programming.png',
                'Code',
                'Developed the mobile app, frontend services, and integrated IoT devices.'),
            const SizedBox(height: 10),
            __buildProcess(
                context,
                '04.',
                'assets/icons/testing.png',
                'Testing',
                'Conducted testing for all components to ensure a seamless user experience.'),
            const SizedBox(height: 10),
            __buildProcess(context, '05.', 'assets/icons/launch.png', 'Launch',
                'Launched the app on the App Store and Google Play, and set up server infrastructure.'),
            const SizedBox(height: 10),
            __buildProcess(
                context,
                '06.',
                'assets/icons/maintenance.png',
                'Maintenance',
                'Provided ongoing support and updates based on user feedback.'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String index, String iconPath,
      String title, String description) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ZoomIn(
          globalKey: GlobalKey(),
          repeat: false,
          duration: 1.seconds,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  index,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Divider(color: AppColors.greyLight),
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                width: 60,
                child: Image.asset(
                  iconPath,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
