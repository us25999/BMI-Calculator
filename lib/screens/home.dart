import 'package:flutter/material.dart';
import 'package:my_app_1/constants/app_constants.dart';
import 'package:my_app_1/widgets/left_bar.dart';
import 'package:my_app_1/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmiResult = 0;
  String textResult = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("BMI Calculator",
              style:
                  TextStyle(color: mainHexColor, fontWeight: FontWeight.w500)),
          backgroundColor: accentHexColor,
          centerTitle: true,
          elevation: 0),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  child: TextField(
                    controller: weightController,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Weight(kg)",
                        hintStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                ),
                Container(
                  width: 150,
                  child: TextField(
                    controller: heightController,
                    style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Height(m)",
                        hintStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.white.withOpacity(.8))),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            MaterialButton(
              color: accentHexColor,
              onPressed: () {
                if (heightController.text != "" &&
                    weightController.text != "") {
                  double h = double.parse(heightController.text);
                  double w = double.parse(weightController.text);
                  setState(() {
                    bmiResult = w / (h * h);
                    if (bmiResult > 25) {
                      textResult = "You are over weight";
                    } else if (bmiResult >= 18.5 && bmiResult <= 25) {
                      textResult = "You have normal weight";
                    } else {
                      textResult = "You are under weight";
                    }
                  });
                } else {
                  setState(() {
                    bmiResult=0;
                    textResult="";
                    
                  });
                  
                  ScaffoldMessenger.of(context).showSnackBar(

                    SnackBar(
                     
                      content: Text(
                        "Weight and Height should not be Empty",
                      ),
                    ),
                  );
                }
              },
              child: Container(
                child: Text("CALCULATE",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: mainHexColor)),
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Text(
                bmiResult == 0 ? "Result" : bmiResult.toStringAsFixed(2),
                style: TextStyle(fontSize: 90, color:bmiResult == 0 ?Colors.white: accentHexColor),
              ),
            ),
            SizedBox(height: 30),
            Visibility(
              visible: textResult.isNotEmpty,
              child: Container(
                child: Text(textResult,
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: accentHexColor)),
              ),
            ),
            SizedBox(height: 20),
            RightBar(barWidth: 30),
            SizedBox(height: 20),
            RightBar(barWidth: 70),
            SizedBox(height: 20),
            RightBar(barWidth: 30),
            SizedBox(height: 20),
            LeftBar(70),
            SizedBox(height: 20),
            LeftBar(70)
          ],
        ),
      ),
    );
  }
}
