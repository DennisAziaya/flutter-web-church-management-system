
const rootRoute = "/";
//const rootRouteDisplayName = "Home";

const authenticationRouteDisplayName = "Authentication";
const authenticationRoute = "/auth";

const dashboardRouteDisplayName = "Dashboard";
const dashboardRoute = "/dashboard";

const memberRouteDisplayName = "Members";
const memberRoute = "/members";

const activityRoute = "/activity";
const activityRouteDisplayName = "Activity";

const settingsRoute = "/settings";
const settingsRouteDisplayName = "Settings";


class MenuItem{
  final String route;
  final String routeName;
  MenuItem({required this.route, required this.routeName});
}


List<MenuItem> sideMenuItems = [
  //MenuItem(route: rootRoute, routeName: rootRouteDisplayName),
  MenuItem(route: dashboardRoute, routeName: dashboardRouteDisplayName),
  MenuItem(route: memberRoute, routeName: memberRouteDisplayName),
  MenuItem(route: activityRoute, routeName: activityRouteDisplayName),
  MenuItem(route: settingsRoute, routeName: settingsRouteDisplayName),
  MenuItem(route: authenticationRoute, routeName: activityRouteDisplayName),
];