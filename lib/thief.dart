import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ThiefPage extends StatelessWidget {
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'wilVYy9XZTg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'fstRal6AjVc',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: 'mBHIKYiI4eY',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모험가 도적'),
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
                'images/nightlord.png',
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
                    '나이트로드',
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
                      '나이트로드는 표창을 던져 적에게 마크를 새겨 공격시 추가적인 표창이 나오게 하는 퓨어딜러입니다.\n'
                          '장점\n'
                          '메이플에서 가장 강력한 극딜능력을 보유하고 있으며 기동성이 좋다.\n'
                          '단점\n'
                          '하이리스크 하이리턴 직업이라 강력한 극딜을 넣기위해선 매우 어려운 난이도에 속한다',
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
                'images/shadower.png',
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
                    '섀도어',
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
                      '섀도어는 하나의 단검으로 그림자에 숨어 강력한 한방을 때리는 암살형 직업입니다.\n'
                          '장점\n'
                          '광부로 키울시 패시브로 있는 메소흭들량 증가 옵션으로 매우 좋고 슈퍼스탠스,짧은 쿨타임의 무적기 ,다크사이트 등의 좋은 유틸을 가지고있다\n'
                          '단점\n'
                          '좋은 유틸리티에 비해 다른 도적직업보다 극딜이 약하며 손이 바쁘다.',
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
                'images/duelblade.png',
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
                    '듀얼블레이드',
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
                      '듀얼블레이드는 이도류를 사용해 빠르고 시원한 공격을 하는 직업입니다 \n'
                          '장점\n'
                          '5차스킬들의 극딜이 좋으며 보스전 성능이 우수하다.\n'
                          '단점\n'
                          '5차스킬의 의존도가 매우 높으며 매우 약한 평딜과 사냥능력이 보인다.',
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