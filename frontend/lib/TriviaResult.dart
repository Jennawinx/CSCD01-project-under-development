import 'package:flutter/material.dart';
//import 'package:frontend/homepage.dart';
import './navbar.dart';

class TriviaResult extends StatefulWidget {
  @override
  _TriviaResultState createState() => _TriviaResultState();
}

class _TriviaResultState extends State<TriviaResult> {
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavBar(0),
        body: Container(
          child: new ListView(children: [
            Container(
              color: Colors.blueGrey[900],
              height: 200,
              alignment: Alignment.center,
              child: Text(
                'Result',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              padding: EdgeInsets.all(20.0),
              //decoration: BoxDecoration(
              //borderRadius: BorderRadius.all(Radius.circular(10)),
              //),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Your trivia result is as follows:',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              // width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle, color: Colors.green),
                        Text('correct' + '/10'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 3.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(Icons.cancel, color: Colors.red),
                        Text('Incorrect' + '/10'),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 3.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Icon(Icons.cancel, color: Colors.red),
                        Text('NotAnswered' + '/10'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.0),
            Container(
              alignment: Alignment.center,
              child: Text('Total Score',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: Text('score' + '/10',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 45.0),
            RaisedButton(
              highlightElevation: 25.0,
              //color: Colors.black,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              //color: Colors.lightGreen[800]
              child: Text(
                'Get My ACS History',
                style: TextStyle(color: Colors.blueGrey[900], fontSize: 20),
                textAlign: TextAlign.center,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0)),
              onPressed: () {},
            ),
            RaisedButton(
              highlightElevation: 25.0,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              //color: Colors.black,
              //color: Colors.lightGreen[800]
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Share',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueGrey[900],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(Icons.share)
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0)),
              onPressed: () {},
            ),
          ]),
        ));
  }
}

/*
children: [
           Container(
            color: Colors.blueGrey[900],
            height: 200,
            alignment: Alignment.center,
            child: Text(
              'Result',
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            padding: EdgeInsets.all(20.0),
            //decoration: BoxDecoration(
            //borderRadius: BorderRadius.all(Radius.circular(10)),
            //),
          ),
          Container(
             Text('Your trivia result is as follows:'),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                       Icon(Icons.check_circle, color: Colors.green),
                  Text('correct'+'/10'),
                    ],
                  )
,                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.grey,
                        width: 3.0,
                  ),
                ),
            ),)
            Container(
              padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                       Icon(Icons.cancel, color: Colors.red),
                  Text('Incorrect'+'/10'),
                    ],
                  )
,                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.grey,
                        width: 3.0,
                  ),
                ),
            ),
            ),
             Container(
              padding: EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                       Icon(Icons.cancel, color: Colors.red),
                  Text('NotAnswered'+'/10'),
                    ],
                  )
,                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        color: Colors.grey,
                        width: 3.0,
                  ),
                ),
            ),
            ),]
          )),],
          Container(
            Text('Total Score'),
          ),
          Container(
            Text('score'+'/10'),
          ),
          OutlineButton(
            highlightElevation: 25.0,
            color: Colors.black,
            //color: Colors.lightGreen[800]
            child: Text(
              'Get My ACS History',
              style: TextStyle(color: Colors.black, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)),
            onPressed: () {},
          ),
          OutlineButton(
            highlightElevation: 25.0,
            color: Colors.black,
            //color: Colors.lightGreen[800]
            child: Row(
              children: [
                Text(
                  'Share',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Icon(Icons.share)
              ],
            ),
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0)),
            onPressed: () {},
          ),
          Container(
            Text("ScoreBoard",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold))
          )
        ],
*/
