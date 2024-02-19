import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Fadillah wahyu nugraha"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/LogoSplashScreen.png"),
            ),
            accountEmail: Text("Fadil@gmail.com"),
          ),
          DrawerListTile(
              title: "Home",
              icon: Icons.home,
              onTilePressed: () {
                // Add your logic for handling Home tile tap here
              }),
          DrawerListTile(
              title: "Settings",
              icon: Icons.settings,
              onTilePressed: () {
                // Add your logic for handling Settings tile tap here
              }),
          // Add more DrawerListTile widgets as needed
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTilePressed;

  const DrawerListTile(
      {required this.icon, required this.title, required this.onTilePressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: onTilePressed,
    );
  }
}
