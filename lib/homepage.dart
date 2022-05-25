import 'package:eagle/welcome.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    var sizeAware = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child: Image.asset('assets/images/Group 8.png'),
          width: sizeAware.width * 257 / 1080,
          height: sizeAware.height * 146 / 160,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        shadowColor: Colors.black.withOpacity(0.5),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: sizeAware.width * 433 / 1080,
              height: sizeAware.height * 80 / 1920,
              child: Text(
                "Happening Now",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 30.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: sizeAware.width * 844 / 1080,
              height: sizeAware.height * 55 / 1920,
              child: Text(
                "Damascus International Fair 61",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),]),
            GestureDetector(
              child: Image(
                image: AssetImage('assets/images/ddd.png'),
                width: MediaQuery.of(context).size.width * 844 / 1080,
                height: MediaQuery.of(context).size.height * 465 / 1920,
              ),
              onTap: (){
                
              }
            ),
            SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: sizeAware.width * 844 / 1080,
              height: sizeAware.height * 55 / 1920,
              child: Text(
                "Damascus Books Fair",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),]),
            GestureDetector(
              child: Image(
                image: AssetImage('assets/images/kkk.png'),
                width: MediaQuery.of(context).size.width * 844 / 1080,
                height: MediaQuery.of(context).size.height * 465 / 1920,
              ),
              onTap: (){
                Navigator.push(
                context,MaterialPageRoute(builder: (context) => WelcomeScreen(),),);
                }
            ),
            FloatingActionButton(onPressed:(){} ),
          ])
      ),
    );
  }
}
