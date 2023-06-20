import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BowmanPage extends StatelessWidget {
  YoutubePlayerController _controller1 = YoutubePlayerController(
    initialVideoId: 'laTNIROabTU',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: 'tIY50lD4ZGY',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: 'zHUC70dj_Xg',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('모험가 궁수'),
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
                'images/bowmaster.png',
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
                    '보우마스터',
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
                      '보우마스터는 여러가지 화살촉과 미라쥬 스킬들로 지속적인 데미지를 입히는 직업입니다.\n'
                          '장점\n'
                          '하나의 키만 누르고 있어도 많은 화살촉들이 나와 공격해 지속딜이 매우강하며 흡혈 화살촉을 통한 어마무시한 회복력을 보여줍니다\n'
                          '단점\n'
                          '패시브스킬에 있는 효과들로 인해 아이템을 맞추면 다른직업에 비해 효율이 낮게 나온다.',
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
                'images/sniper.png',
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
                    '신궁',
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
                      '신궁은 매우 멀리서 상대를 공격하며 한 방이 강하면서 일정 횟수 이상 공격시 더욱 강력한 공격을 하는 직업입니다.\n'
                          '장점\n'
                          '스킬들의 X축 범윅 매우 길어 먼 거리에서 공격을 할 수 있으며 조작 매커니즘이 간단하다.\n'
                          '단점\n'
                          '매우 빈약한 생존성과 Y축범위가 부실해 사냥이 힘들다.',
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
                'images/pathfinder.png',
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
                    '패스파인더',
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
                      '패스파인더는 렐릭의 저주를 받았지만 저주를 활용해서 각기다른 3가지 문양의 공격을 하는 직업입니다. \n'
                          '장점\n'
                          '각각의 문양마다 강력한 데미지, 유틸리티, 속사공격을 할 수 있어 상황에 맞는 유용한 전투를 할 수 있다.\n'
                          '단점\n'
                          '문양마다 다른 효과를 누려 상황에 맞게 사용할 수 있어야하며 이로 인해직업의 이해도가 높게 요구되며 ',
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