import 'package:flutter/material.dart';
import 'package:project/main.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xFF252c4a);
    Color secondColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulations",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Your Score is :",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              "${widget.score}",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 80.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              elevation: 0.0,
              color: Colors.orange,
              textColor: Colors.black,
              child: Text("Repeat The Quizz"),
            )
          ],
        ),
      ),
    );
  }
}
