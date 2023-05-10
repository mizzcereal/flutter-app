import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFF9F9F9)));
  runApp(const MyApp()); //프로그램 실행시 MyApp부터 실행
}

// 변하지 않는 화면 작업 시 사용
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'N.G',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home : DefaultTabController(
          initialIndex: 1,
          length : 4,
          child : Scaffold(
            appBar : AppBar(
              bottom : TabBar(
                tabs: [
                  Tab(
                      icon : Icon(Icons.home),
                      text : "홈페이지"
                  ),
                  Tab(
                      icon : Icon(Icons.assignment_turned_in),
                      text : "공지사항"
                  ),
                  Tab(
                      icon : Image.asset('images/icon2.png', width: 45, height: 25,),
                      text : "직업소개"
                  ),
                  Tab(
                      icon : Icon(Icons.question_answer),
                      text : "커뮤니티"
                  ),
                ],
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Color(0xFFDDDDDD),
                labelColor: Colors.black,
              ),
              title : Text("N.G"),
              centerTitle: true,
            ),
            body: NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  // 여기서 SliverAppBar 위젯을 추가할 수 있습니다.
                ];
              },
              body: TabBarView(
                children: [
                  // 첫 번째 탭에 대한 화면
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '컴터랑 두개 왤캐 어렵지!',
                          style: TextStyle(fontSize: 24),
                        ),
                        SizedBox(height: 20),
                        // 버튼 위젯 추가
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
                              '다른 사이트로 이동',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 두 번째 탭에 대한 화면
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
                        title: Text('공지사항 3'),
                        subtitle: Text('2023-05-03'),
                      ),
                    ],
                  ),
                  // 세 번째 탭에 대한 화면
                  Center(
                    child: Text('세 번째 탭 화면'),
                  ),
                  // 네 번째 탭에 대한 화면
                  Center(
                    child: Text('네 번째 탭 화면'),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}

