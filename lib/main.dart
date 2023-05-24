import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFF9F9F9)));
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
              _JobIntroductionTab(),
              _CommunityTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class _JobIntroductionTab extends StatefulWidget {
  const _JobIntroductionTab({Key? key}) : super(key: key);

  @override
  __JobIntroductionTabState createState() => __JobIntroductionTabState();
}

class __JobIntroductionTabState extends State<_JobIntroductionTab> {
  bool showBlueBox = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showBlueBox = !showBlueBox;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showBlueBox)
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 400,
                          height: 600,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '파란색 박스',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CommunityTab extends StatelessWidget {
  const _CommunityTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('커뮤니티 탭 화면'),
    );
  }
}