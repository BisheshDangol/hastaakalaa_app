import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/dashboard_page.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/discover_page.dart';
import 'package:hastaakalaa_app/core/test_screens/marketplace_page.dart';
import 'package:hastaakalaa_app/core/test_screens/profile_page.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/create_art_page.dart';
import 'package:hastaakalaa_app/features/user/presentation/screens/user_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// ignore: must_be_immutable
class NavigationBarPage extends StatelessWidget {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildScreens() {
      return [
        DashboardPage(),
        DiscoverPage(),
        CreateArtPage(),
        MarketPlacePage(),
        UserPage(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.dashboard),
          title: ("Home"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.image_search_sharp),
          title: ("Discover"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.add_box_outlined),
          title: ("Add"),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          title: ("Marketplace"),
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
