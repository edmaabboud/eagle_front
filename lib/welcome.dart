import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizeAware = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 663 / 1920,
          ),
          Center(
            child: Image(
              image: AssetImage('assets/images/Group 8.png'),
              width: MediaQuery.of(context).size.width * 617 / 1080,
              height: MediaQuery.of(context).size.height * 353 / 1920,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 134/ 1920,
          ),
          Center(
            child: Text(
              " Bring your exhibition event\n management to the next level\n with us",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 298/ 1920,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 359 / 1080,
            height: MediaQuery.of(context).size.height * 82 / 1920,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(54),
                color: Color(0xffffee32),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff565656),
                    spreadRadius: 0,
                    blurRadius: 0,
                    offset: Offset(2,4),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
