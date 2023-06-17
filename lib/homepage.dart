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
      orderBy: 'id DESC', // 최신 순서로 정렬
    );
    setState(() {
      posts = List.generate(
        maps.length.clamp(0, 3), // 최신 3개의 글만 보이도록 제한
            (index) =>
            Post(
              title: maps[index]['title'],
              content: maps[index]['content'],
            ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'images/background3.png',
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '커뮤니티 최신글',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white, // Set the background color to white
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}