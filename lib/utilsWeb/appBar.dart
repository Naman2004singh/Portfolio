import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Spacer(
              flex: 2,
            ),
            TabsWeb(
              "Home",
              route: "/",
            ),
            Spacer(),
            TabsWeb(
              "Works",
              route: "/work",
            ),
            Spacer(),
            TabsWeb(
              "Blogs",
              route: "/blog",
            ),
            Spacer(),
            TabsWeb(
              "About",
              route: "/about",
            ),
            Spacer(),
            TabsWeb(
              "Contact",
              route: "/contact",
            ),
            Spacer()
          ],
        );
  }
}