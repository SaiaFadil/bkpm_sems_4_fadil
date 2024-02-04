import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bkpm_fadil/Acara/acara_13/menu/menu_home.dart';
import 'package:bkpm_fadil/Acara/acara_13/menu/menu_profile.dart';
import 'package:bkpm_fadil/Acara/acara_13/menu/menu_shop.dart';
import 'package:bkpm_fadil/Acara/acara_13/navigation/bottom_navbar.dart';
import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';

class utama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();

        return false; 
      },
      child: BlocProvider(
          create: (context) => BottomNavCubit(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
          
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: utamaPage(),
          )),
    );
  }
}

class utamaPage extends StatefulWidget {
  @override
  _utamaPageState createState() => _utamaPageState();
}

class _utamaPageState extends State<utamaPage> {
  final _pageNavigation = [
    menu_home(),
    menu_shop(),
    menu_profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: CustomColors.whiteColor,
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  Widget _buildBody(int index) {
    return _pageNavigation.elementAt(index);
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      elevation: 30.0,
      currentIndex: context.read<BottomNavCubit>().state,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme:
          IconThemeData( color: CustomColors.primary),
      fixedColor: CustomColors.primary,
      unselectedItemColor: CustomColors.whiteColor,
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      backgroundColor: CustomColors.whiteColor,
      unselectedLabelStyle: CustomText.TextArvo(1, CustomColors.whiteColor),
      selectedLabelStyle: CustomText.TextArvo(13, CustomColors.primary),
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(
            tooltip: "home",
            icon: Image.asset(
              "assets/images/nav_home.png",
              height: 25,
            ),
            label: "Home",
            activeIcon:
                Image.asset("assets/images/nav_home_on.png", height: 35)),
        BottomNavigationBarItem(
            tooltip: "Shop",
            icon: Image.asset(
              "assets/images/nav_shop.png",
              height: 25,
            ),
            label: "Shop",
            activeIcon:
                Image.asset("assets/images/nav_shop_on.png", height: 35)),
        BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/nav_profile.png",
              height: 25,
            ),
            label: "Profile",
            activeIcon:
                Image.asset("assets/images/nav_profile_on.png", height: 35),
            tooltip: "Profil"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
