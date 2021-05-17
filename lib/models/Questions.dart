import 'package:flutter/material.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

class Answer {
  final int id ;
  final String Canswer,Sanswer;
//  final List<String> options;

  Answer({@required this.id, @required this.Canswer,@required this.Sanswer});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Choose the word below that is Synonym of  \"Ultimately\"" ,
    "options": ['next', 'finally', 'behind', 'even',"late"],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Choose the word below that is Synonym of  \"compel\"",
    "options": ['allow', 'compare', 'compute', 'force','yield'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "Choose the word below that is Synonym of  \"figurative\"",
    "options": ['delicate', 'relative', 'restrictive', 'typical','metaphorical'],
    "answer_index": 4,
  },
  {
    "id": 4,
    "question": "Choose the word below that is Antonym of  \"Introverted\"",
    "options": ['ongoing', 'outgoing', 'easygoing', 'foregoing','undergoing'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Choose the word below that is Antonym of  \"adore\"",
    "options": ['disable', 'dismiss', 'disturb', 'distort','dislike'],
    "answer_index": 4,
  },
  {
    "id": 4,
    "question": "Choose the word below that is Antonym of  \"frantic\"",
    "options": ['calm', 'sharp', 'curt', 'blunt','cold'],
    "answer_index": 0,
  },

];
