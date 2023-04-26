import 'package:flutter/material.dart';
import 'package:repentanceforumweb/routing/routes.dart';
import '../pages/activity/activity_route.dart';
import '../pages/authentication/authentication_route.dart';
import '../pages/dashboard/dashboard_route.dart';
import '../pages/member/member_route.dart';
import '../pages/setting/setting_route.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case authenticationRoute:
      return _getPageRoute(const AuthenticationPage());
    case dashboardRoute:
      return _getPageRoute(const DashBoardRoute());
    case memberRoute:
      return _getPageRoute(const MemberRoute());
    case activityRoute:
      return _getPageRoute(const ActivityRoute());
    case settingsRoute:
      return _getPageRoute(const SettingRoute());
    default:
      return _getPageRoute(const DashBoardRoute());
  }

}


///WITH SLIDING TRANSITION
// PageRoute _getPageRoute(Widget child){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       // Apply custom sliding transition animation here
//       Offset begin = Offset(1.0, 0.0); // Specify the starting offset for the slide
//       Offset end = Offset.zero; // Specify the ending offset for the slide
//       Tween<Offset> tween = Tween<Offset>(begin: begin, end: end);
//       Animation<Offset> offsetAnimation = animation.drive(tween);
//
//       return SlideTransition(
//         position: offsetAnimation,
//         child: child,
//       );
//     },
//   );
// }

///WITHOUT TRANSITION
PageRoute _getPageRoute(Widget child){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Apply custom transition animation here
      return child; // Return the child widget without any transition effect
    },
  );
}

///WITH FADE TRANSITION
// PageRoute _getPageRoute(Widget child){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       // Apply custom fade transition animation here
//       return FadeTransition(
//         opacity: animation,
//         child: child,
//       );
//     },
//   );
// }


///WITH SCALE TRANSITION
// PageRoute _getPageRoute(Widget child){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       // Apply custom scale transition animation here
//       return ScaleTransition(
//         scale: animation,
//         alignment: Alignment.center,
//         child: child,
//       );
//     },
//   );
// }

///WITH ROTATE TRANSITION
// PageRoute _getPageRoute(Widget child){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       // Apply custom rotation transition animation here
//       return RotationTransition(
//         turns: animation,
//         child: child,
//       );
//     },
//   );
// }


///WITH DARK TRANSITION
// PageRoute _getPageRoute(Widget child){
//   return MaterialPageRoute(builder: (context) => child);
// }