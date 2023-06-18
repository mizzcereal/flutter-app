import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:url_launcher/url_launcher.dart';

class Post {
  String title;
  String content;

  Post({required this.title, required this.content});
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> posts = [];

  late Database _database;

  @override
  void initState() {
    super.initState();
    _openDatabase();
  }

  void _openDatabase() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'posts_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE posts(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, content TEXT)',
        );
      },
      version: 1,
    );
    _loadPosts();
  }

  void _loadPosts() async {
    final List<Map<String, dynamic>> maps = await _database.query(
      'posts',
      orderBy: 'id DESC',
    );
    setState(() {
      posts = List.generate(
        maps.length,
            (index) => Post(
          title: maps[index]['title'],
          content: maps[index]['content'],
        ),
      ).take(20).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('홈페이지'),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/homepage.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '커뮤니티 최신글',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      posts[index].title,
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 10),
                    Text(
                      posts[index].content,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          ),
          SizedBox(height: 16),
          InkWell(
            onTap: () {
              launch('https://maplestory.nexon.com/Home/Main');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
              ),
              child: Text(
                '메이플스토리 공식 홈페이지로 이동',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}