import 'package:flutter/material.dart';

// widgets
import 'package:dashboard/widgets/index.dart';

class SideLayout extends StatelessWidget {
  SideLayout({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(),
        body: const ResponsiveWidget(
          largeScreen: LargeScreens(),
          smallScreen: SmallScreen(),
        ));
  }
}
