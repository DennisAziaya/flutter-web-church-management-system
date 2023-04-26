import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repentanceforumweb/constants/styles.dart';
import 'package:repentanceforumweb/pages/authentication/authentication_route.dart';
import 'package:repentanceforumweb/pages/errors/404.dart';
import 'package:repentanceforumweb/routing/routes.dart';
import 'package:repentanceforumweb/widgets/layouts/base.dart';

import 'controllers/menu_controller.dart';
import 'controllers/navigation_controller.dart';


void main() {
  Get.put(AppMenuController());
  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: authenticationRoute,
      unknownRoute: GetPage(name: "/not-found", page: () => const PageNotFound(), transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => BaseLayout()),
        GetPage(name: authenticationRoute, page: () => const AuthenticationPage()),
        GetPage(name: "/not-found", page: () => const PageNotFound()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Church Management System',
      theme: ThemeData(
          //scaffoldBackgroundColor: Colors.white,
          scaffoldBackgroundColor: lightColor,
          textTheme: GoogleFonts.mulishTextTheme(
              Theme.of(context).textTheme
          ).apply(
              bodyColor: Colors.black
          ),
          primarySwatch: Colors.indigo,
          primaryColor: Colors.pink,
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS : FadeUpwardsPageTransitionsBuilder(),
            //TargetPlatform.iOS : FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android : FadeUpwardsPageTransitionsBuilder(),
          })
      ),
      //home: const AuthenticationPage(),
      //home: BaseLayout(),
    );
  }
}

