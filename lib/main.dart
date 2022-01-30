import 'package:flutter/material.dart';
import 'package:youtube_clone_ui/ui/video_card.dart';

import 'model/video_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VideoModel> items = [
    VideoModel("https://i.ytimg.com/an_webp/UwsrzCVZAb8/mqdefault_6s.webp?du=3000&sqp=CMq12o8G&rs=AOn4CLBHJqFC46gG9lY3YSoOcW-qUZoY7w", "How Far is Too Far? | The Age of A.I.", "13:14", "https://yt3.ggpht.com/ytc/AKedOLRSXKqEWY-oybQZO8-_6QMlcy7sBFeDW0IJzHVXUA=s68-c-k-c0x00ffffff-no-rj",
        "Youtube Originals", "54M Views", "Jan 30 2022"),
    VideoModel("Video Thumbnail", "Video Title 2", "5:23", "Channel Avatar 2",
        "Channel Title 2", "120K Views", "Jan 30 2022"),
    VideoModel("Video Thumbnail", "Video Title 3", "4:16", "Channel Avatar 2",
        "Channel Title 3", "5250K Views", "Jan 30 2022"),
    VideoModel("Video Thumbnail", "Video Title 4", "20:21", "Channel Avatar 2",
        "Channel Title 4", "50K Views", "Jan 30 2022"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Image.asset(
          "assets/yt_logo_rgb_light.png",
          width: 100,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Trending"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Music"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Gaming"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Live"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Sports"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Kinds"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Stories"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Cars"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("News"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        label: Text("Programming"),
                        elevation: 0,
                        onSelected: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Recommended",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              videoCard(items[0]),
              videoCard(items[1]),
              videoCard(items[2]),
              videoCard(items[3]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              title: Text("Shorts"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text("New Video"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_play),
              title: Text("Playlist"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ]),
    );
  }
}
