import 'package:flutter/material.dart';
import 'package:portfolio/mobile/about/about_mobile.dart';
import 'package:portfolio/mobile/blogs/blog_mobile.dart';
import 'package:portfolio/mobile/contact/contact_mobile.dart';
import 'package:portfolio/mobile/home/landing_page_mobile.dart';
import 'package:portfolio/mobile/work/works_mobile.dart';
import 'package:portfolio/web/about/about_web.dart';
import 'package:portfolio/web/blogs/blog_web.dart';
import 'package:portfolio/web/contact/contact_web.dart';
import 'package:portfolio/web/home/landing_page_web.dart';
import 'package:portfolio/web/works/works_web.dart';

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
      case "/about":
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return AboutWebScreen();
                    } else {
                      return AboutMobileScreen();
                    }
                  },
                ));
      case "/blog":
        return MaterialPageRoute(
            settings: settings,
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return BlogWeb();
                    } else {
                      return BlogMobile();
                    }
                  },
                ));
      case "/work":
        return MaterialPageRoute(
          settings: settings,
            builder: (_) => LayoutBuilder(
                  builder: (context, constraints) {
                    if (constraints.maxWidth > 800) {
                      return WorksWeb();
                    } else {
                      return WorksMobile();
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
