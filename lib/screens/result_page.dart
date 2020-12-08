import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/reusable_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result',
              style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center ,
                      children: <Widget>[
                        Text('Normal',style: kResultTextStyle,),
                        Text(
                          '21.2',
                          style: kBMITextStyle,
                        ),
                        Text(
                          'Your BMI result is quite low. you should ear more',
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle,
                        ),
                        BottomButton(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          buttonTitle: 'ReCalculate',
                        )

                      ],
                  ),
              ),
          )
        ],
      ),
    );
  }
}
