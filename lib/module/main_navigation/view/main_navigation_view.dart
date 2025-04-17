import 'package:flutter/material.dart';
import 'package:flutter_basic/core.dart';

class MainNavigationView extends StatefulWidget {
  MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return QNavigation(
      mode: QNavigationMode.nav2,
      pages: [
        DashboardView(),
        Container(),
      ],
      menus: [
        NavigationMenu(
          icon: Icons.dashboard,
          label: "Dashboard",
        ),
        NavigationMenu(
          icon: Icons.person,
          label: "Profile",
        ),
      ],
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
