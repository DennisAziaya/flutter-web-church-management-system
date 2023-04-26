import 'package:flutter/widgets.dart';
import 'package:repentanceforumweb/constants/controllers.dart';
import 'package:repentanceforumweb/routing/routes.dart';

import '../routing/router.dart';

Navigator localNavigator() => Navigator(
  key : navigationController.navigationKey,
  initialRoute : dashboardRoute,
  onGenerateRoute: generateRoute,
);