import 'package:flutter/material.dart';

/*void main(){
  runApp(MyApp());
}*/
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;
  void answerQustion(){
    setState((){
      qIndex = qIndex + 1;
    });
  }
  var q =[
    'What\'s your name',
    'What\'s your age'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text(
              q[qIndex]
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQustion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: (){
                print(2 +10);
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: ()=> print('this is ans 3'),
            )
          ],
        ),
      ),
    );
  }
}
