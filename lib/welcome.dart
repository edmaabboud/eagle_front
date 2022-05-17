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
          Container(
            width: 500,
            height: 500,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/Group 8.png'),
              ),
            ),
          ),
          Container(
            width: 150,
            height: 60,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Get Start",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.amber,
                ),
          ),
        ],
      ),
    );
  }
}
