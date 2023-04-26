import 'package:flutter/material.dart';
import 'package:repentanceforumweb/widgets/layouts/side_menu.dart';
import 'package:repentanceforumweb/widgets/layouts/small_screen.dart';
import 'package:repentanceforumweb/widgets/layouts/top_nav.dart';
import '../../helpers/responsiveness.dart';
import 'large_screen.dart';

class BaseLayout extends StatelessWidget {
  BaseLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: tobNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body:  const ResponsiveWidget(largeScreen: LargeScreen(), smallScreen: SmallScreen(),)
    );
  }
}
