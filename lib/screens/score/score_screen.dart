import 'package:colin_quiz_app/controllers/question_controller.dart';
import 'package:colin_quiz_app/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';


class ScoreScreen extends StatelessWidget {

  final tittlestyle=TextStyle(fontWeight: FontWeight.w800,fontSize: 18);
  final textstyle=TextStyle( fontSize: 18);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFb3c2cc),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
        //  SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 1),
              Text(
                "Result",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(color: kSecondaryColor),
              ),
              Spacer(),
//              Text(
//                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
//                style: Theme.of(context)
//                    .textTheme
//                    .headline4
//                    .copyWith(color: kSecondaryColor),
//              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                 child: Text("Question", style: tittlestyle),),
                  Text("Correct Answer",style: tittlestyle),
                  Text("Selected Answer",style: tittlestyle),

                ],
              ),
            ...List.generate(
              _qnController.answers.length,
                    (index) =>Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Question ${updatenumber(index)}"),
                        ),
                        Text(_qnController.answers[index].Canswer),
                        Text(_qnController.answers[index].Sanswer),

                      ],
                    )
            ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 5.0,
                    onPressed: () =>{

                      print('Start Quiz'),
                      Get.offAll(WelcomeScreen())
                    } ,
                    padding: EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Colors.white,
                    child: Text(
                      'Return to Home',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 1.5,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'OpenSans',
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
  int updatenumber(int index){
    return index+1;
  }
}
