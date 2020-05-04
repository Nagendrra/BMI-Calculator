import 'package:bmi/components/constants.dart';
import 'package:bmi/components/reusablecard.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {

  ResultPage({this.bmiResult,this.bmiInterpretation,this.bmiValue});

  final String bmiResult;
  final String bmiValue;
  final String bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('BMI Calculator '),),
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(padding: EdgeInsets.all(15.0),
              child: Text('',style: TextStyle(fontSize: 58,
                  fontWeight: FontWeight.w900,color: Colors.white),),
            ),
          ),
          Expanded(flex: 5,
            child: ReusableCard(
              colour: kAcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(bmiResult,style: kOverViewTextStyle,),
                  Text(bmiValue,style: kResultTextStyle,),
                  Text(bmiInterpretation,style: kCommentsTextStyle,),



                ],


              ),

            ),
          ),
          Expanded(
            child: GestureDetector(onTap: (){
              Navigator.pop(context);
            },
              child: Container(
                color: kContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                height: kBottomContainerHeight,
                width: double.infinity,
                child: Center(
                  child: Text('RE-CALCULATE',style: kBigLabelStyle,),
                ),
              ),
            ),
          )

        ],
        ),
      ),

    );
  }
}
