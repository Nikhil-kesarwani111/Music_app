import 'package:flutter/material.dart';
import 'package:music_rock/Models/service_model/service_model.dart';
import 'package:music_rock/config/routes/routes_name.dart';
import 'package:music_rock/view/Home_screen/home_screen.dart';
import 'package:music_rock/view/Service%20Detailed%20Screen/Service_detailed_screen.dart';
import 'package:music_rock/view/Service_filter_screen/Service_filter_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(builder: (BuildContext context) => HomeScreen());

      case RoutesName.detailedscreen:
        return MaterialPageRoute(builder: (BuildContext context) => ServiceDetailScreen(service: settings.arguments as ServiceModel));

      case RoutesName.servicefilter:
        return MaterialPageRoute(builder: (BuildContext context) => ServiceFilterScreen());


      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
