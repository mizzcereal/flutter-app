import 'package:flutter/material.dart';

class Notice {
  final String title;
  final String subtitle;
  final String content;

  Notice(this.title, this.subtitle, this.content);
}

class UpdateTab extends StatefulWidget {
  const UpdateTab({Key? key}) : super(key: key);

  @override
  _UpdateTabState createState() => _UpdateTabState();
}

class _UpdateTabState extends State<UpdateTab> {
  int selectedIndex = -1;
  List<Notice> notices = [
    Notice(
      '공지사항 기능 완성',
      '2023-06-17',
      '이 홈페이지가 어떻게 업데이트 되는지 알려주는 새로운 기능입니다. \n\n'
          '공지사항 탭에 오셔서 지금까지 추가된 기능과 그에 대한 자세한 내용을 보실 수 있을 겁니다.',
    ),
    Notice('공지사항 2', '2023-05-02', '공지사항 2 내용입니다.'),
    Notice('공지사항 4', '2023-05-03', '공지사항 3 내용입니다.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('공지사항'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/update.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                for (var index = 0; index < notices.length; index++)
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        child: ListTile(
                          title: Text(notices[index].title),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(notices[index].subtitle),
                              if (selectedIndex == index)
                                Text(
                                  notices[selectedIndex].content,
                                  style: TextStyle(
                                    fontSize: 16,
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
          ),
        ],
      ),
    );
  }
}