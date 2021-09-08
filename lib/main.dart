import 'package:flutter/material.dart';
import 'package:quizzler/quizbrain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzler',
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Quizzler(),
      ),
    );
  }
}

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreBoard = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade600,
            Colors.black,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //text widget - where the question goes
          Expanded(
            flex: 5,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Text(
                  quizBrain.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 75.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //True button

              RaisedButton(
                padding: EdgeInsets.only(
                    left: 97.0, top: 25.0, right: 97.0, bottom: 25.0),
                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  bool correctAns = quizBrain.getQuestionAns();

                  if (correctAns == true) {
                    scoreBoard.add(
                      Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.green,
                      ),
                    );
                    print('user got it right');
                  } else {
                    scoreBoard.add(
                      Icon(
                        Icons.thumb_down_outlined,
                        color: Colors.red,
                      ),
                    );
                    print('user got it wrong');
                  }

                  setState(() {
                    quizBrain.getQuestionNumber();
                  });
                },
                color: Colors.transparent,
                splashColor: Color.fromRGBO(0, 255, 0, 0.3),
                elevation: 0.0,
                hoverElevation: 0.0,
                highlightElevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  side: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),

              Container(
                width: 20.0,
              ),
              //False Icon

              RaisedButton(
                padding: EdgeInsets.only(
                    left: 100.0, top: 25.0, right: 100.0, bottom: 25.0),
                child: Text(
                  'False',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                onPressed: () {
                  bool correctAns = quizBrain.getQuestionAns();

                  if (correctAns == false) {
                    scoreBoard.add(
                      Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.green,
                      ),
                    );
                    print('user got it right');
                  } else {
                    scoreBoard.add(
                      Icon(
                        Icons.thumb_down_outlined,
                        color: Colors.red,
                      ),
                    );
                    print('user got it wrong');
                  }

                  setState(() {
                    quizBrain.getQuestionNumber();
                  });
                },
                color: Colors.transparent,
                splashColor: Color.fromRGBO(194, 24, 7, 0.3),
                elevation: 0.0,
                hoverElevation: 0.0,
                highlightElevation: 0.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  side: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 25.0,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: scoreBoard,
          ),

          Container(
            height: 100.0,
          )
        ],
      ),
    );
  }
}
