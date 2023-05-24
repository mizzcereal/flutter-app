import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

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
  bool showBlueBox1 = false;
  bool showBlueBox2 = false;
  bool showBlueBox3 = false;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          // 여기서 SliverAppBar 위젯을 추가할 수 있습니다.
        ];
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
          GestureDetector(
            onTap: () {
              setState(() {
                showBlueBox1 = !showBlueBox1;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showBlueBox1 = !showBlueBox1;
                          });
                        },
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/ad_war.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '모험가 전사',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showBlueBox2 = !showBlueBox2;
                          });
                        },
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                            image: DecorationImage(
                              image: AssetImage('images/ad_war.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '모험가 전사',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showBlueBox3 = !showBlueBox3;
                          });
                        },
                        child: Container(
                          width: 200,
                          height: 100,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 30),
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
                        if (showBlueBox1) _buildBlueBox1(),
                        if (showBlueBox2) _buildBlueBox2(),
                        if (showBlueBox3) _buildBlueBox3(),
                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
          Center(
            child: Text('네 번째 탭 화면'),
          ),
        ],
      ),
    );
  }

  Widget _buildBlueBox1() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '첫 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildBlueBox2() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '두 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildBlueBox3() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '세 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}