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
              color: Colors.amber,
              width: 100,
              height: 50,
              child: MaterialButton(
                onPressed: (){},
                  child: Text("Get Start",
                  style: TextStyle(color: Colors.black,
                  ),),
              ),
            )
          ],
        ),
    );
  }
}
