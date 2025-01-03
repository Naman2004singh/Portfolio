import 'package:flutter/material.dart';
import 'package:portfolio/mobile/contact/contact_mobile.dart';
import 'package:portfolio/mobile/home/landing_page_mobile.dart';
import 'package:portfolio/web/contact/contact_web.dart';
import 'package:portfolio/web/home/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return LandingPageWeb();
                    } else {
                      return LandingPageMobile();
                    }
                  },
                ));
      case "/contact":
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return ContactWeb();
                    } else {
                      return ContactMobile();
                    }
                  },
                ));
      default:
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return LandingPageWeb();
                    } else {
                      return LandingPageMobile();
                    }
                  },
                ));
    }
  }
}
