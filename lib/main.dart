import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); //프로그램 실행시 MyApp부터 실행
}
// 변하지 않는 화면 작업 시 사용
class MyApp extends StatelessWidget {
  const MyApp({super.key});


//MaterialApp = 앱으로서 기능을 할 수 있도록 도와주는 뼈대
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                ),
                title : Text("N.G"),
                centerTitle: true,
              )
          )
      ),
      title: 'N.G',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}