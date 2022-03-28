import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestion = 0;
  var quiz = [
    {
      "title": "Question 1",
      "answers": [
        {"answer": "Answer 11", "correct": false},
        {"answer": "Answer 12", "correct": false},
        {"answer": "Answer 13", "correct": false},
      ]
    },
    {
      "title": "Question 2",
      "answers": [
        {"answer": "Answer 21", "correct": false},
        {"answer": "Answer 22", "correct": false},
        {"answer": "Answer 23", "correct": false},
      ]
    },
    {
      "title": "Question 3",
      "answers": [
        {"answer": "Answer 31", "correct": false},
        {"answer": "Answer 32", "correct": false},
        {"answer": "Answer 33", "correct": false},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Center(
                child: Text(
              "Question${currentQuestion + 1}/${quiz.length}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
          ListTile(
            title: Text(
              quiz[currentQuestion]['title'],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...(quiz[currentQuestion]['answer'] as List<Map<String, Object>>)
              .map((answer) {
            return ListTile(
              title: RaisedButton(
                onPressed: () {},
                child: Text(answer['answer']),
              ),
            );
          }),
        ],
      ),
    );
  }
}
