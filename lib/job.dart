import 'package:flutter/material.dart';

class JobTab extends StatefulWidget {
  @override
  _JobTabState createState() => _JobTabState();
}

class _JobTabState extends State<JobTab> {
  bool showAdWarrior = false;
  bool showAdWizard = false;
  bool showAdBowman = false;
  bool showAdThief = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showAdWarrior = !showAdWarrior;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAdWarrior = !showAdWarrior;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/ad_war.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '모험가 전사',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAdWizard = !showAdWizard;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/ad_bishop.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '모험가 마법사',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAdBowman = !showAdBowman;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/ad_bowmaster.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '모험가 궁수',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showAdThief = !showAdThief;
                    });
                  },
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/ad_nightlord.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '모험가 도적',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (showAdWarrior) _adWarrior(),
                  if (showAdWizard) _adWizard(),
                  if (showAdBowman) _adBowman(),
                  if (showAdThief) _adThief(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _adWarrior() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '첫 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _adWizard() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '두 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _adBowman() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '세 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget _adThief() {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          '세 번째 파란색 박스',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
