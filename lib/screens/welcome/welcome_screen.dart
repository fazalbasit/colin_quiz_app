import 'package:colin_quiz_app/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFb3c2cc),
      ),
      body: Container(
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//            begin: Alignment.topCenter,
//            end: Alignment.bottomCenter,
//            colors: [
//              Color(0xFFb3c2cc),
//              Color(0xFFb3c2cc),
//              Color(0xFFcfd9df),
//              Color(0xFFcfd9df),
//            ],
//            stops: [0.1, 0.4, 0.7, 0.9],
//          ),
//        ),
        child: Stack(
          children: [
//          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(flex: 2), //2/6
                    Text(
                      "Let's Start Quiz,",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                    //Text("Enter your informations below"),
                    Spacer(), // 1/6
//                  TextField(
//                    decoration: InputDecoration(
//                      filled: true,
//                      fillColor: Colors.black12,
//                      hintText: "Full Name",
//                      border: OutlineInputBorder(
//                        borderRadius: BorderRadius.all(Radius.circular(12)),
//                      ),
//                    ),
//                  ),
                    Spacer(), // 1/6
                     Container(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 5.0,
                          onPressed: () =>{

                            print('Start Quiz'),
                            Get.to(QuizScreen())
                          } ,
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Colors.white,
                          child: Text(
                            'Start Quiz',
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
                    Spacer(flex: 2), // it will take 2/6 spaces
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





//Container(
//padding: EdgeInsets.symmetric(vertical: 25.0),
//width: double.infinity,
//child: RaisedButton(
//elevation: 5.0,
//onPressed: () =>{
//
//print('Start Quiz'),
//Get.to(WelcomeScreen())
//} ,
//padding: EdgeInsets.all(15.0),
//shape: RoundedRectangleBorder(
//borderRadius: BorderRadius.circular(30.0),
//),
//color: Colors.white,
//child: Text(
//'Start Quiz',
//style: TextStyle(
//color: Color(0xFF527DAA),
//letterSpacing: 1.5,
//fontSize: 18.0,
//fontWeight: FontWeight.bold,
//fontFamily: 'OpenSans',
//),
//),
//),
//),