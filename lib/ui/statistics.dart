import 'package:flutter/material.dart';
import 'package:flutter_animate_on_scroll/flutter_animate_on_scroll.dart';
import 'responsive_widget.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        height: 400,
        color: Colors.black.withOpacity(.7),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildStatistic(context, 'assets/icons/briefcase.png', '2+',
              'Years of Experience'),
          _buildStatistic(
              context, 'assets/icons/menus.png', '5+', 'Projects Done'),
          _buildStatistic(context, 'assets/icons/service.png', '∞', 'Services'),
          _buildStatistic(
              context, 'assets/icons/happy.png', '5+', 'Happy Clients'),
          _buildStatistic(
              context, 'assets/icons/Coffee.png', '∞', 'Coffee Cups'),
        ]),
      ),
      mobileScreen: Container(
        color: Colors.black54,
        padding: EdgeInsets.symmetric(
          vertical: 50,
        ),
        child: FadeInLeft(
          globalKey: GlobalKey(),
          repeat: false,
          duration: 2.seconds,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  _buildStatistic(context, 'assets/icons/briefcase.png', '2+',
                      'Years of Experience'),
                  const SizedBox(height: 50),
                  _buildStatistic(
                      context, 'assets/icons/menus.png', '5+', 'Projects Done'),
                ],
              ),
              Column(
                children: [
                  _buildStatistic(
                      context, 'assets/icons/happy.png', '5+', 'Happy Clients'),
                  const SizedBox(height: 50),
                  _buildStatistic(
                      context, 'assets/icons/Coffee.png', '∞', 'Coffee Cups'),
                ],
              ),
              Column(
                children: [
                  _buildStatistic(
                      context, 'assets/icons/service.png', '∞', 'Services'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatistic(
      BuildContext context, String icon, String total, String description) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              icon,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            total,
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      mobileScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              icon,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            total,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
