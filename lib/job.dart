import 'package:flutter/material.dart';
import 'adjob.dart';
import 'warrior.dart';

class JobTab extends StatefulWidget {
  @override
  _JobTabState createState() => _JobTabState();

}

class _JobTabState extends State<JobTab> {
  bool showAdWarrior = false;
  bool showAdWizard = false;
  bool showAdBowman = false;
  bool showAdThief = false;
  bool showAdPirate = false;

  void navigateToAdHeroPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WarriorPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('공지사항'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
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
            GestureDetector(
              onTap: navigateToAdHeroPage,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: navigateToAdHeroPage,
                    child: Container(
                      width: 150,
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
                      width: 150,
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
                      width: 150,
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
                      width: 150,
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
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showAdPirate = !showAdPirate;
                      });
                    },
                    child: Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: AssetImage('images/ad_captin.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          '모험가 해적',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (showAdWarrior) AdJobWidgets.adWarrior(),
                        if (showAdWizard) AdJobWidgets.adWizard(),
                        if (showAdBowman) AdJobWidgets.adBowman(),
                        if (showAdThief) AdJobWidgets.adThief(),
                        if (showAdPirate) AdJobWidgets.adPirate(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}