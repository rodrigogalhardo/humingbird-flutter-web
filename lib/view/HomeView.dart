import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humingbird/view/HomeContentDesktop.dart';
import 'package:humingbird/view/HomeContentMobile.dart';
import 'package:humingbird/widgets/CenteredView.dart';
import 'package:humingbird/widgets/NavigationBar.dart';
import 'package:humingbird/widgets/NavigationDrawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
