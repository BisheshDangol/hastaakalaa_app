import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/core/test_screens/dashboard_page.dart';
import 'package:hastaakalaa_app/core/test_screens/discover_page.dart';
import 'package:hastaakalaa_app/core/test_screens/marketplace_page.dart';
import 'package:hastaakalaa_app/core/test_screens/profile_page.dart';
import 'package:hastaakalaa_app/core/test_screens/search_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// ignore: must_be_immutable
class NavigationBarPage extends StatelessWidget {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 2);
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        DashboardPage(),
        DiscoverPage(),
        SearchPage(),
        MarketPlacePage(),
        ProfilePage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.health_and_safety),
          title: ("Doctor"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person_add),
          title: ("Patient"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.dashboard),
          title: ("Dashboard"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.note_alt_outlined),
          title: ("Appointment"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person_pin),
          title: ("Profile"),
          // If new screen needs to be pushed, this code
          // onPressed: (_) => pushNewScreen(context, screen: ProfileScreen()),
        )
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      // Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}
