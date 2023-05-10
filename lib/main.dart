import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color(0xFFF9F9F9)));
  runApp(const MyApp()); //프로그램 실행시 MyApp부터 실행
}

// 변하지 않는 화면 작업 시 사용
class MyApp extends StatelessWidget {
  const MyApp({super.key});

//MaterialApp = 앱으로서 기능을 할 수 있도록 도와주는 뼈대
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                  Tab(icon: Icon(Icons.home), text: "홈페이지"),
                  Tab(icon: Icon(Icons.assignment_turned_in), text: "공지사항"),
                  Tab(
                      icon: Image.asset(
                        'images/icon2.png',
                        width: 45,
                        height: 25,
                      ),
                      text: "직업소개"),
                  Tab(icon: Icon(Icons.question_answer), text: "커뮤니티"),
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
                // 첫 번째 탭에 대한 화면
                Center(
                  child: Text('첫 번째 탭 화면'),
                ),
                // 두 번째 탭에 대한 화면
                ListView(
                  children: [
                    ListTile(
                      title: Text('공지사항 1'),
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
          )),
    );
  }
}
