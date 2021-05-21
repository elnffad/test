import 'package:copy/chat_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          SizedBox(
            width: 20,
          ),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelPadding: EdgeInsets.all(12),
            tabs: [
              Icon(Icons.camera_alt),
              Container(
                width: 90,
                alignment: Alignment.center,
                child: Text("Chats"),
              ),
              Container(
                width: 90,
                alignment: Alignment.center,
                child: Text("Status"),
              ),
              Container(
                width: 90,
                alignment: Alignment.center,
                child: Text("Calls"),
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("chats"),
          ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ChatScreen(
                      image: 'user/heikal.jpg',
                      title: 'هيكل',
                      message: "تعالى المطبعه",
                    ),
                    ChatScreen(
                      image: "user/sayed.jpg",
                      title: "السيد",
                      message: "مش جاى",
                    ),
                  ],
                );
              }),
          Text("status"),
          Text("Calls"),
        ],
      ),
    );
  }
}
