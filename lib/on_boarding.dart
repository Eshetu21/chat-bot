import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Your AI Assistant"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text(
              "Using this app, you can ask any questions and receive articles using artificial intelligence assistant",
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Image.asset("assets/onboarding.png"),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Continue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_right_alt_sharp, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

