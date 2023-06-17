import 'package:flutter/material.dart';

class UpdateTab extends StatelessWidget {
  const UpdateTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          title: Text('공지사항 4'),
          subtitle: Text('2023-05-03'),
        ),
      ],
    );
  }
}