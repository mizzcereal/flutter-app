import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'job.dart'; // job_tab.dart 파일을 임포트합니다.
import 'commu.dart';
import 'homepage.dart'; // Import the homepage.dart file
import 'update.dart';

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
            backgroundColor: Colors.white, // N.G 바의 배경색
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48.0), // TabBar의 높이
              child: Column(
                children: [
                  Container(
                    height: 1.0,
                    color: Colors.black, // 검은 선의 색상
                  ),
                  TabBar(
                    indicatorColor: Colors.black, // 선택된 탭의 인디케이터 색상
                    unselectedLabelColor: Colors.black, // 탭의 비선택 상태 색상
                    labelColor: Colors.blue, // 선택된 탭 텍스트 색상
                    tabs: [
                      Tab(
                        child: Text(
                          '메인화면',
                          style: TextStyle(
                            color: Colors.black, // 탭 텍스트의 비선택 상태 색상
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '공지사항',
                          style: TextStyle(
                            color: Colors.black, // 탭 텍스트의 비선택 상태 색상
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '직업소개',
                          style: TextStyle(
                            color: Colors.black, // 탭 텍스트의 비선택 상태 색상
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '커뮤니티',
                          style: TextStyle(
                            color: Colors.black, // 탭 텍스트의 비선택 상태 색상
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            title: Text(
              'N.G',
              style: TextStyle(
                color: Colors.blue, // N.G 타이틀 색상
              ),
            ),
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
        physics: NeverScrollableScrollPhysics(), // 좌우 슬라이드 비활성화
        controller: DefaultTabController.of(context), // 현재 선택된 탭 유지
        children: [
          HomePage(),
          UpdateTab(),
          JobTab(),
          CommunityPage(),
        ],
      ),
    );
  }
}






