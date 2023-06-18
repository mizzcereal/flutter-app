import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MagicianPage extends StatelessWidget {
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: '9qqQ7GpOLto',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'ZB0hFViwrGg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: '0MXSqwiLF94',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모험가 마법사'),
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
                'images/buldok.png',
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
                    '아크메이지(불/독)',
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
                      '아크메이지(불/독)은 각 스킬로 적을 공격시 각각의 도트데미지로 지속적으로 적을 갉아먹는 직업입니다.\n'
                      '장점\n'
                      '5차스킬의 성능이 매우 강하여 25초마다 강력한 스킬들을 지속적으로 입힐 수 있다.\n'
                      '단점\n'
                      '지속적으로 도트스킬들을 관리해야하며 인피니티가 꺼지면 약해진다.',
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
                'images/suncol.png',
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
                    '아크메이지(썬/콜)',
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
                      '아크메이지(썬/콜)은 빙결마법을 사용해 빙결중첩을 쌓아 크리티컬데미지를 증가시키고 번개마법을 사용해 빙결중첩을 감소시켜 추가적인 데미지를 넣는 직업입니다.\n'
                      '장점\n'
                      '좋은 사냥능력과 다양한 유틸리티,강력한 극딜을 가진 이론적으로 만능직업에 속한다\n'
                      '단점\n'
                      '인피니티가 꺼지면 약해지며 크리티컬 확률도 낮아 추가적인 요소들이 많이 필요해 진입장벽이 조금 높게 있다.',
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
                'images/bishop.png',
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
                    '비숍',
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
                      '비숍은 아군을 지켜주는 서포터역할과 특정스킬을 활성화시켜 서포터보단 딜러의 역할로 변형도 가능한 직업입니다.\n'
                      '장점\n'
                      '메이플에서 보스파티나 사냥파티 시 반드시 필요한 직업으로 유틸, 난이도, 기본스펙이 매우 탄탄한 무자본 추천 직업입니다.'
                      '단점\n'
                      '보스의 패턴에 어떤 스킬을 써야하는지에 대해서 정확히 알고있어야 해 직업과 보스이해도가 높아야 하며 인피니티가 꺼지면 딜이 약해진다.',
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