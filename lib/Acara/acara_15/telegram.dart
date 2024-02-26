import 'package:flutter/material.dart';

class Telegram extends StatefulWidget {
  const Telegram({Key? key});

  @override
  State<Telegram> createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
final List<ChartModel>items = [
  ChartModel(name: 'fadil', message: 'hello fadil', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
  ChartModel(name: 'lavivah', message: 'hello lavivah', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
  ChartModel(name: 'amelia', message: 'hello amelia', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
  ChartModel(name: 'wahyu', message: 'hello wahyu', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
  ChartModel(name: 'nugraha', message: 'hello nugraha', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
  ChartModel(name: 'ardi', message: 'hello ardi', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
  ChartModel(name: 'syam', message: 'hello syam', time: '12.00', profileUrl: 'https://berita.99.co/wp-content/uploads/2023/01/foto-profil-wa-keren-aesthetic.jpg'),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Telegram",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search),
          )
        ],
      ),
      // drawer: DrawerScreen(),
      body: ListView.separated(
        itemCount: items.length,
        itemBuilder: ((context, index){
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.blue, // Change to your desired color
              backgroundImage: NetworkImage(items[index].profileUrl),
            ),
            title: Text(
              items[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[index].message),
            trailing: Text(items[index].time),
          );
        }),
        separatorBuilder: (context, index) => Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.white),
        backgroundColor: Color(0xFF65a9ea), // Corrected color code
        onPressed: () {},
      ),
    );
  }
}

class ChartModel {
  final String name;
  final String message;
  final String time;
  final String profileUrl;

  ChartModel({
    required this.name,
    required this.message,
    required this.time,
    required this.profileUrl,
  });
}