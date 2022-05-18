import 'dart:isolate';

import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? msgStatus;
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontrller = TextEditingController();
  TextEditingController namecontrller = TextEditingController();
  TextEditingController passworddcontroller = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool isPassword = true;
  var textInputDecoration;
  bool _obscureText = true;
  bool _obscureTextt = true;
  bool loading = false;
  String error = '';

  validator() {
    if (_formkey.currentState != null && _formkey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not validated");
    }
      @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
    @override
  Widget build(BuildContext context) {
      var sizeAware = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading:Image(
            image: AssetImage('assets/images/Group 8.png'),
            width: sizeAware.width * 299/ 1080,
            height:sizeAware.height *131/1920 ,
            ),
            shadowColor: Colors.black.withOpacity(0),
        ),
            body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children :[ Center(
            child: Image(
              image: AssetImage('assets/images/Asset 6a.png'),
              width: MediaQuery.of(context).size.width * 617 / 1080,
              height: MediaQuery.of(context).size.height * 353 / 1920,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 134/ 1920,
          ),
                  Container(
                  width: sizeAware.width* 764/1080,
                  height:sizeAware.height *107/1920,
                    child: TextFormField(
                    controller: emailcontrller,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                          validator: (String? value) {
                          if (value == null || value.trim().length == 0) {
                            return 'email must not be empty';
                          }
                          if (!RegExp("").hasMatch(value)) {
                            return "Please Enter valid email ";
                          }
                          return null;
                        },
                    decoration: InputDecoration(
                      labelText: 'email',
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(54),),),
                    ),
                ),
                  ),
                SizedBox(
                  height: 30.0,
                ),
                  Container(
                  width: sizeAware.width* 764/1080,
                  height:sizeAware.height *107/1920,
                    child: TextFormField(
                    controller: namecontrller,
                    keyboardType: TextInputType.name,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },
                        validator: (String? value) {
                          if (value == null || value.trim().length == 0) {
                            return 'username must not be empty';
                          }
                          return null;
                        },
                    decoration: InputDecoration(
                      labelText: 'username',
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(54),),),
                    ),
                ),
                  ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: sizeAware.width* 764/1080,
                  height:sizeAware.height *107/1920,
                  child: TextFormField(
                    controller: passwordcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureText,
                    onChanged: (String value) {
                      print(value);
                    },
                      validator: (String? value) {
                          if (value == null || value.trim().length == 0) {
                            return " password must not be empty";
                          }
                          if (value.length < 8) {
                            return " Password is too short";
                          }
                          return null;
                        },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(54),),),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: sizeAware.width* 764/1080,
                  height:sizeAware.height *107/1920,
                  child: TextFormField(
                    controller: passworddcontroller,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureTextt,                     
                      validator: (String? value) {
                        if (value == null || value.trim().length == 0) {
                          return " password must not be empty";
                        }
                        if (value.length < 8) {
                          return " Password is too short";
                        }
                        return null;
                      },
                    decoration: InputDecoration(
                      labelText: 'confirm Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureTextt = !_obscureTextt;
                          });
                        },
                        child: Icon(_obscureTextt
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(54),),
                      ),
                    ),
                  ),
                ),
                                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
            width: MediaQuery.of(context).size.width * 359 / 1080,
            height: MediaQuery.of(context).size.height * 82 / 1920,
                        child: MaterialButton(
                          onPressed: () {
                                email: emailcontrller.text;
                                name: namecontrller.text;
                                password: passwordcontroller.text;
                                confirm_password: passworddcontroller.text;
                      },
                  child: Text(
                "Submit",
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
                          ),
                    ]
                        ),
                    ],
                  )
                ),
          );
  }
}

