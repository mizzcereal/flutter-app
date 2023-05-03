import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'N.G 게임소개사이트',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'N.G')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{ //Single.. 이게 있어야 애니메이션 기능들을 할 수 있음
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      () => setState(() => _selectedIndex = _tabController.index);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)), // N.G 중앙으로 오게함
      ),
      body: Container(),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: [
          Tab(
            icon : Icon(Icons.person),
            text : "Friends"
          ),
          Tab(
              icon : Icon(Icons.person),
              text : "Friends"
          ),
          Tab(
              icon : Icon(Icons.person),
              text : "Friends"
          ),
          Tab(
              icon : Icon(Icons.person),
              text : "Friends"
          ),
        ],
      ),
    );
    }
}