import 'package:bmi/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPages extends StatelessWidget {
  const ResultPages(
      {super.key, required this.bmiNo,
      required this.resultText,
      required this.suggestion});
  final String resultText;
  final String bmiNo;
  final String suggestion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        shadowColor: const Color(0xFF0E101F),
        backgroundColor: const Color(0xFF0E101F),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 55),
            child: Text(
              'BMI CALCULATOR',
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kYourResultText,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultText,
                    ),
                    Text(
                      bmiNo,
                      style: kBMI_Value,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      suggestion,
                      style: kSuggestionText,
                    )
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kBottomContainerColour,
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: const EdgeInsets.only(top: 10.0),
              child: const Center(
                  child: Text(
                'RE-CALCULATE',
                style: kCalculateStyle,
              )),
            ),
          )
        ],
      ),
    );
  }
}
