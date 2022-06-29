import 'package:eagle/ui/addExpo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'notification.dart';
import 'profile.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    ProfileScreen(),
    NotificationScreen(),
  ];
  List<String> titles = [
    'Profile',
    'Notrification',
  ];
  @override
  void initState() {
    super.initState();
  }

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
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          navigateTo(context, AddExpoScreen());
          try {
            var data = await getdata();
            print(data);
            //throw('error !!!!!!!');
          } catch (error) {
            print('error ${error.toString()}');
          }
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomNavigationBar(
        //shape: CircularNotchedRectangle(),
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffffee32),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active,
            ),
            label: '',
          ),
        ],
      ),

    );
  }
  Future<String> getdata() async {
    return 'Great a new Product';
  }

  void navigateTo(context, widget) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => widget,
        ),
      );
}
