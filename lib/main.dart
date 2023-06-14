import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'job.dart'; // job_tab.dart 파일을 임포트합니다.
import 'commu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'N.G',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "홈페이지",
                ),
                Tab(
                  icon: Icon(Icons.assignment_turned_in),
                  text: "공지사항",
                ),
                Tab(
                  icon: Image.asset(
                    'images/icon2.png',
                    width: 45,
                    height: 25,
                  ),
                  text: "직업소개",
                ),
                Tab(
                  icon: Icon(Icons.question_answer),
                  text: "커뮤니티",
                ),
              ],
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Color(0xFFDDDDDD),
              labelColor: Colors.black,
            ),
            title: Text("N.G"),
            centerTitle: true,
          ),
          body: _MyAppBody(),
        ),
      ),
    );
  }
}

class _MyAppBody extends StatefulWidget {
  const _MyAppBody({Key? key}) : super(key: key);

  @override
  _MyAppBodyState createState() => _MyAppBodyState();
}

class _MyAppBodyState extends State<_MyAppBody> {

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[];
      },
      body: TabBarView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '컴터랑 두개 왤캐 어렵지!!!',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    launch('https://maplestory.nexon.com/Home/Main');
                  },
                  child: Container(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                    ),
                    child: Text(
                      '다른 사이트로 이동',
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
          ListView(
            children: [
              ListTile(
                title: Text('공지사항 500'),
                subtitle: Text('2023-05-01'),
              ),
              ListTile(
                title: Text('공지사항 2'),
                subtitle: Text('2023-05-02'),
              ),
              ListTile(
                title: Text('공지사항 4'),
                subtitle: Text('2023-05-03'),
              ),
            ],
          ),
          JobTab(),
          CommunityPage(), // 유튜브 동영상 추가
        ],
      ),
    );
  }
}