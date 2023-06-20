import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PiratePage extends StatelessWidget {
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'GR2XHEVa4tQ',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'kOLBbfqv4ss',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: '9zmQIXDyRlQ',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모험가 해적'),
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
                'images/captin.png',
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
                    '캡틴',
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
                      '캡틴은 멀리서 총을 쏘며 자신의 배와 선원을 소환시켜 적을 제압하는 직업입니다.\n'
                          '장점\n'
                          '소환수들을 소환해 최상위권 평딜데미지와 안정적인 극딜능력을 가지고있습니다.\n'
                          '단점\n'
                          '매우 어려운 코어강화난이도로 새로 입문하는 사람들이 하기에는 추천하기 어렵다.',
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
                'images/viper.png',
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
                    '바이퍼',
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
                      '바이퍼는 자신의 인파이팅 기술과 수룡의 힘을 함께 사용하는 근거리딜러입니다\n'
                          '장점\n'
                          '강한 화력과 간단한 매커니즘으로 사냥 보스 둘다 우수한 성능을 보인다\n'
                          '단점\n'
                          '유일한 단점은 사거리가 짧다.',
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
                'images/cannonsuter.png',
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
                    '캐논슈터',
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
                      '캐논슈터는 강력한 화력을 가진 대포를 쏴 적을 제압하는 직업입니다.\n'
                          '장점\n'
                          '뛰어난 기동성과 단순한 딜링방식을 가지고 있다.\n'
                          '단점\n'
                          '확률형 버프가 있어 자신의 캐릭터 성능이 운의 요소에 맡겨진다.',
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