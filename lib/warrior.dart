import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class WarriorPage extends StatelessWidget {
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'NMNvVtthPME',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: '6pp6cBM_8Po',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: 'yNJM2-1z91g',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모험가 전사'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child : Container(
        width: 400,
        height: 2700,
        decoration: BoxDecoration(
          color: const Color(0xff404040),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'images/hero.png',
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '히어로',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '히어로는 공격을 하면 쌓이는 콤보 카운트를 이용해 자신을 강화하는 직업입니다.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '장점',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '엄청 강한 보스전 성능이지만 그에 비해 난이도가 정말 쉬워 입문하기 매우 쉽다',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '단점',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '크리티컬확률이라는 옵션의 수치가 전직업 중 제일 낮아 100%라는 수치를 맞추는데는 어려움이 있으며 5차전직 전까지 암울하다.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            YoutubePlayer(
              controller: _controller1,
              showVideoProgressIndicator: true,
            ),
            SizedBox(height: 30),
            Image.asset(
              'images/darknight.png',
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '다크나이트',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '다크나이트는 죽음을 두려워하지 않는 직업으로 캐릭터가 사망시 자신이 원하는 시간만큼 무적시간이 주어짐과 동시에 부활하는 컨셉을 가지고 있습니다.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '장점',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '안정적인 딜구조와 공격시마다 소량의 HP회복기능이 있으며 부활과 무적이 있어 뛰어난 생존력을 보여준다',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '단점',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '무적시간을 늘릴라면 버프지속시간 증가라는 옵션을 올려야하는데 이를 올리기위해선 유니온이라는 시스템을 해야하며 기동성이 안좋아 답답한 느낌이 있을 수 있다.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            YoutubePlayer(
              controller: _controller2,
              showVideoProgressIndicator: true,
            ),
            SizedBox(height: 30),
            Image.asset(
              'images/paladin.png',
              width: 400,
              height: 300,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '팔라딘',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '팔라딘은 빛의 망치를 든 성기사로서 엄청난 내구성을 자랑하는 캐릭터입니다.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '장점',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '정말 막강한 생존력과 파티원에게 도움이 되는 수많은 유틸리티, 쉬운 난이도로 라이트하게 즐길 유저들에게 추천되는 직업이다',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '단점',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '막강한 생존력에 비해 평딜이 약하여 극딜비중이 매우 높은 직업이다.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            YoutubePlayer(
              controller: _controller3,
              showVideoProgressIndicator: true,
            ),
          ],
        ),
      ),
    ),
    );
  }
}