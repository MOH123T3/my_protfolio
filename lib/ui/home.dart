// ignore_for_file: use_super_parameters

import 'dart:async';
import 'package:demo/ui/responsive_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'about.dart';
import 'contact_us.dart';
import 'footer.dart';
import 'header.dart';
import 'my_projects.dart';
import 'statistics.dart';
import 'working_process.dart';
import '../config/colors.dart';
import '../config/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _headerGlobalKey = GlobalKey();
  final _aboutGlobaleKey = GlobalKey();
  final _statisticsGlobaleKey = GlobalKey();
  final _workingProcessGlobaleKye = GlobalKey();
  final _recentProjectsGlobaleKey = GlobalKey();
  final _contactUsGlobaleKey = GlobalKey();

  final _scrollController = ScrollController();

  final _fabStream = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _fabStream.sink.add(_scrollController.offset > 500);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              key: _headerGlobalKey,
              titleSpacing: 0,
              toolbarHeight: 100,
              backgroundColor: Colors.black,
              title: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .15,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Container(
                    width: 40,
                    height: 40,
                    color: AppColors.mainColor,
                    child: SizedBox(
                        child: Image.asset(AppConstants.userProfile,
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(500),
                child: Header(
                  scrollController: _scrollController,
                ),
              ),
              actions: [
                Row(
                  children: [
                    MaterialButton(
                      onPressed: _scrollToAbout,
                      highlightColor: Colors.white60,
                      child: Text(
                        'About Me',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      onPressed: _scrollToStatistics,
                      child: Text(
                        'Experience',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      onPressed: _scrollToWorkingProcess,
                      child: Text(
                        'Process',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      onPressed: _scrollToRecentProjects,
                      child: Text(
                        'Portfolio',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(width: 20),
                    MaterialButton(
                      onPressed: _scrollToContactUs,
                      color: AppColors.mainColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      child: Text(
                        'Contact Me',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .15),
              ],
            ),
            ..._slivers(),
          ],
        ),
        floatingActionButton: _buildFab(),
      ),
      mobileScreen: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(AppConstants.userProfile,
                        fit: BoxFit.cover),
                  ),
                ),
                Divider(),
                ListTile(
                  onTap: _scrollToAbout,
                  title: Text(
                    'About Me',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: _scrollToStatistics,
                  title: Text(
                    'Experience',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: _scrollToWorkingProcess,
                  title: Text(
                    'Process',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  onTap: _scrollToRecentProjects,
                  title: Text(
                    'Portfolio',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                const SizedBox(height: 20),
                ListTile(
                  title: MaterialButton(
                    onPressed: _scrollToContactUs,
                    color: AppColors.mainColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                    child: Text(
                      'Contact Me',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () async {
                        launch(AppConstants.github);
                      },
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/icons/github.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        launch(AppConstants.linkedin);
                      },
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/icons/linkedin.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        launch(AppConstants.twitter);
                      },
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/icons/twitter.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        launch(AppConstants.instagram);
                      },
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/icons/instagram.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        launch(AppConstants.whatsUp);
                      },
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          'assets/icons/whatsapp.png',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(),
          child: CustomScrollView(
            shrinkWrap: true,
            controller: _scrollController,
            slivers: [
              SliverAppBar(
                key: _headerGlobalKey,
                titleSpacing: 0,
                centerTitle: true,
                backgroundColor: Colors.transparent,
                leading: Align(
                  child: Builder(
                    builder: (ctx) => InkWell(
                      onTap: () {
                        Scaffold.of(ctx).openDrawer();
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                flexibleSpace: Container(
                  decoration: BoxDecoration(color: Colors.black),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(300),
                  child: Header(scrollController: _scrollController),
                ),
              ),
              ..._slivers(),
            ],
          ),
        ),
        floatingActionButton: _buildFab(),
      ),
    );
  }

  List<Widget> _slivers() => [
        SliverToBoxAdapter(
          key: _aboutGlobaleKey,
          child: About(),
        ),
        SliverToBoxAdapter(
          key: _statisticsGlobaleKey,
          child: Statistics(),
        ),
        SliverToBoxAdapter(
          key: _workingProcessGlobaleKye,
          child: WorkingProcess(),
        ),
        SliverToBoxAdapter(
          key: _recentProjectsGlobaleKey,
          child: MyProjects(),
        ),
        SliverToBoxAdapter(
          key: _contactUsGlobaleKey,
          child: ContactUs(),
        ),
        SliverToBoxAdapter(
          child: Footer(),
        ),
      ];

  Widget _buildFab() {
    return StreamBuilder<bool>(
      stream: _fabStream.stream,
      builder: (_, data) {
        final bool showFab = data.hasData && data.data!;
        return AnimatedOpacity(
          opacity: showFab ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: FloatingActionButton(
            onPressed: showFab
                ? _scrollToHeader
                : null, // make sure user cannot click when button hidden
            mini: true,
            child: Icon(
              Icons.arrow_drop_up_rounded,
              size: 40,
            ),
          ),
        );
      },
    );
  }

  void _scrollToHeader() {
    Scrollable.ensureVisible(
      _headerGlobalKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToAbout() {
    Scrollable.ensureVisible(
      _aboutGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToStatistics() {
    Scrollable.ensureVisible(
      _statisticsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToWorkingProcess() {
    Scrollable.ensureVisible(
      _workingProcessGlobaleKye.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToRecentProjects() {
    Scrollable.ensureVisible(
      _recentProjectsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToContactUs() {
    Scrollable.ensureVisible(
      _contactUsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _fabStream.close();
    super.dispose();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<GlobalKey<State<StatefulWidget>>>(
        '_statisticsGlobaleKey', _statisticsGlobaleKey));
  }
}
