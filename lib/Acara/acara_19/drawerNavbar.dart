import 'package:bkpm_fadil/Acara/acara_19/home.dart';
import 'package:bkpm_fadil/Acara/acara_19/profile.dart';
import 'package:bkpm_fadil/Acara/acara_19/setting.dart';
import 'package:bkpm_fadil/CustomColors.dart';
import 'package:bkpm_fadil/CustomText.dart';
import 'package:flutter/material.dart';

class drawer_acara_19 extends StatefulWidget {
  const drawer_acara_19({super.key});

  @override
  State<drawer_acara_19> createState() => _drawer_acara_19State();
}

class _drawer_acara_19State extends State<drawer_acara_19> {
  int index = 0;
  List<Widget> list = [Home(), Profile(), Setting()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Drawer"),
        ),
        body: list[index],
        drawer: MyDrawer(onTap: (ctx, i) {
          setState(() {
            index = i;
            Navigator.pop(ctx);
          });
        }),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/fotosaya1.jpg"),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Fadillah Wahyu",
                        style: CustomText.TextArvoBold(
                            16, CustomColors.whiteColor),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Fadillah@gmail.com",
                        style: CustomText.TextArvo(12, CustomColors.whiteColor),
                      )
                    ],
                  ),
                )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => onTap(context, 0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () => onTap(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              onTap: () => onTap(context, 2),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              onTap: () => onTap(context, 0),
            ),
          ],
        ),
      ),
    );
  }
}
