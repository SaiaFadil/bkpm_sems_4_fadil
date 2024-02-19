import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bkpm_fadil/Acara/acara_13/menu/menu_home.dart';
import 'package:bkpm_fadil/Acara/acara_13/menu/menu_profile.dart';
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
    menu_profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: CustomColors.secondary,
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
      iconSize: 30,
      selectedIconTheme: IconThemeData(color: CustomColors.blackColor,size: 30),
      fixedColor: CustomColors.blackColor,
      unselectedItemColor: CustomColors.blackColor,
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      backgroundColor: CustomColors.primary,
      showUnselectedLabels: false,
      selectedLabelStyle: CustomText.TextArvo(15, CustomColors.blackColor),
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(
            tooltip: "home",
            icon: Icon(Icons.home_outlined),
            label: "Home",
            activeIcon:
                Icon(Icons.home_sharp),
                backgroundColor: CustomColors.primary,
                ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            label: "Profile",
            activeIcon:Icon(Icons.person_4_rounded)
            ,
            tooltip: "Profil"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
