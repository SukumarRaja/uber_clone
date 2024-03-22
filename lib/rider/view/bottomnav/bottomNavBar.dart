import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';
import 'package:uber/constant/utils/colors.dart';
import 'package:uber/rider/controller/bottomNavRider/bottomNavBarProvider.dart';
import 'package:uber/rider/view/account_screen.dart';
import 'package:uber/rider/view/activity_screen.dart';
import 'package:uber/rider/view/homescreen/riderHomeScreen.dart';
import 'package:uber/rider/view/service/serviceScreenRider.dart';
import 'package:provider/provider.dart';

class BottomNavBarRider extends StatefulWidget {
  const BottomNavBarRider({super.key});

  @override
  State<BottomNavBarRider> createState() => _BottomNavBarRiderState();
}

class _BottomNavBarRiderState extends State<BottomNavBarRider> {
  List<Widget> screens = const [
    RiderHomeScreen(),
    ServiceScreenRider(),
    ActivityScreenRider(),
    AccountScreen()
  ];

  List<PersistentBottomNavBarItem> navBarItems(int currentTap) {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(currentTap == 0
              ? CupertinoIcons.house_fill
              : CupertinoIcons.house),
          title: "Home",
          activeColorPrimary: black,
          inactiveColorPrimary: grey),
      PersistentBottomNavBarItem(
          icon: Icon(currentTap == 1
              ? CupertinoIcons.circle_grid_3x3_fill
              : CupertinoIcons.circle_grid_3x3),
          title: "Services",
          activeColorPrimary: black,
          inactiveColorPrimary: grey),
      PersistentBottomNavBarItem(
          icon: Icon(currentTap == 2
              ? CupertinoIcons.square_list_fill
              : CupertinoIcons.square_list),
          title: "Activity",
          activeColorPrimary: black,
          inactiveColorPrimary: grey),
      PersistentBottomNavBarItem(
          icon: Icon(currentTap == 3
              ? CupertinoIcons.person_fill
              : CupertinoIcons.person),
          title: "Account",
          activeColorPrimary: black,
          inactiveColorPrimary: grey),
    ];
  }

  PersistentTabController controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, tapProvider, child) {
        return PersistentTabView(
          context,
          screens: screens,
          items: navBarItems(tapProvider.currentTap),
          controller: controller,
          confineInSafeArea: true,
          onItemSelected: (value) {},
          backgroundColor: white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
              borderRadius: BorderRadius.circular(8.sp),
              colorBehindNavBar: white),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
              duration: Duration(milliseconds: 200), curve: Curves.ease),
          screenTransitionAnimation: const ScreenTransitionAnimation(
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 200)),
          navBarStyle: NavBarStyle.style6,
        );
      },
    );
  }
}
