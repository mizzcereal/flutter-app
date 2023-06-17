import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

void main() {
  runApp(MyApp());
}

class Post {
  String title;
  String content;


  Post({required this.title, required this.content});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Community App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommunityPage(),
    );
  }
}

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> with AutomaticKeepAliveClientMixin {
  List<Post> posts = [];
  late Database _database;
  ScrollController _scrollController = ScrollController();

  @override
  bool get wantKeepAlive => true;

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
    final List<Map<String, dynamic>> maps = await _database.query('posts');
    setState(() {
      posts = List.generate(
        maps.length,
            (index) => Post(
          title: maps[index]['title'],
          content: maps[index]['content'],
        ),
      );
      posts.sort((a, b) => b.title.compareTo(a.title));
    });
  }

  Future<void> _savePost(Post post) async {
    await _database.insert(
      'posts',
      {
        'title': post.title,
        'content': post.content,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    setState(() {
      posts.insert(0, post);
    });
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String title = '';
        String content = '';

        return AlertDialog(
          title: Text('글 작성'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                onChanged: (value) {
                  title = value;
                },
                decoration: InputDecoration(hintText: '제목'),
              ),
              TextField(
                onChanged: (value) {
                  content = value;
                },
                decoration: InputDecoration(hintText: '내용'),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('작성'),
              onPressed: () {
                if (title.isNotEmpty && content.isNotEmpty) {
                  Post newPost = Post(title: title, content: content);
                  _savePost(newPost);
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // AutomaticKeepAliveClientMixin을 사용하기 위해 super.build(context) 호출

    return Scaffold(
      appBar: AppBar(
        title: Text('커뮤니티 게시판'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostItem(post: posts[index]);
        },
        controller: _scrollController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final Post post;

  PostItem({required this.post});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.content),
    );
  }
}