import 'package:flutter/material.dart';
import 'warrior.dart';
import 'magicion.dart';
import 'bowman.dart';
import 'thief.dart';
import 'pirate.dart';

class JobTab extends StatefulWidget {
  @override
  _JobTabState createState() => _JobTabState();
}

class _JobTabState extends State<JobTab> {
  void navigateToAdHeroPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WarriorPage()),
    );
  }
  void navigateToAdWizardPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MagicianPage()),
    );
  }
  void navigateToAdBowmanPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BowmanPage()),
    );
  }
  void navigateToAdThiefPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThiefPage()),
    );
  }
  void navigateToAdPiratePage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PiratePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('직업소개'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/jobtab.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: GestureDetector(
                onTap: () => navigateToAdHeroPage(context),
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
                      image: AssetImage('images/warriorjob.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7), // 회색 + 70% 불투명도
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '전사',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: GestureDetector(
                onTap: () => navigateToAdWizardPage(context),
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
                      image: AssetImage('images/magicianjob.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7), // 회색 + 70% 불투명도
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '마법사',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: GestureDetector(
                onTap: () => navigateToAdBowmanPage(context),
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
                      image: AssetImage('images/bowmanjob.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7), // 회색 + 70% 불투명도
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '궁수',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: GestureDetector(
                onTap: () => navigateToAdThiefPage(context),
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
                      image: AssetImage('images/thiefjob.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7), // 회색 + 70% 불투명도
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '도적',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              child: GestureDetector(
                onTap: () => navigateToAdPiratePage(context),
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
                      image: AssetImage('images/piratejob.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7), // 회색 + 70% 불투명도
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            '해적',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 300),
          ],
        ),
      ),
    );
  }
}