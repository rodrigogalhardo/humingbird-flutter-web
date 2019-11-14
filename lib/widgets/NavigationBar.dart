import 'package:flutter/material.dart';
import 'package:humingbird/widgets/NavBarItem.dart';
import 'package:humingbird/widgets/NavBarLogo.dart';
import 'package:humingbird/widgets/NavigationBarMobile.dart';
import 'package:humingbird/widgets/NavigationBarTabletDesktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
