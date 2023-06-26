import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

import 'Home page.dart';
import 'oop classes/Models.dart';
import 'oop classes/static_fields.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_up();
}

class _Sign_up extends State<Sign_up> {
  String response = "";
  bool _passwordVisibility = true;
  TextEditingController _usernameController = TextEditingController(text: "");
  TextEditingController _emailController = TextEditingController(text: "");
  TextEditingController _passwordController = TextEditingController(text: "");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  String validateUsername(String value) {
    if (value.isEmpty) {
      return 'Username is required';
    } else {
      return "~~";
    }
  }

  String validateEmail(String value) {
    RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value.isEmpty) {
      return 'Email is required';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Please enter a valid email';
      } else {
        return "~~";
      }
    }
  }

  String validatePassword(String value) {
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');
    if (value.isEmpty) {
      return 'Password is required';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Password must have contain at least one uppercase, one lowercase, one number and at least 8 characters';
      } else {
        return "~~";
      }
    }
  }

  void addUser(User user) async {
    await Socket.connect(StaticFields.ip, StaticFields.port)
        .then((serverSocket) {
      final data = "sign up&&" + userToJson(user) + StaticFields.postFix;
      serverSocket.write(data);
      serverSocket.flush();
      serverSocket.listen((res) {
        setState(() {
          response = String.fromCharCodes(res);
          print('response: $response');
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF232323),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle_outlined,
                  color: Color(0xFF3dd9d6),
                  size: 80,
                ),
                SizedBox(
                  height: 40,
                ),
                // Login
                Text(
                  'SIGN UP',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFFe6efee)),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF297171),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: TextField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle_outlined,
                            ),
                            border: InputBorder.none,
                            hintText: 'Enter your username'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF297171),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_outlined),
                          border: InputBorder.none,
                          hintText: 'Enter your email',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF297171),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: _passwordVisibility,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline,
                            ),
                            border: InputBorder.none,
                            hintText: 'Enter your password ',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye,
                                  color: Color(0xFF3dd9d6)),
                              onPressed: () {
                                setState(() {
                                  _passwordVisibility = !_passwordVisibility;
                                });
                              },
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () async {
                    if (validateUsername(_usernameController.text) == "~~" &&
                        validateEmail(_emailController.text) == "~~" &&
                        validatePassword(_passwordController.text) == "~~") {
                      User newUser = User(
                        username: _usernameController.text,
                        email: _emailController.text,
                        password: _passwordController.text,
                        credit: 0,
                      );
                      addUser(newUser);
                      if (response == 'account successfully created') {
                        StaticFields.activeUser = newUser;
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home_page()));
                      } else {
                        print('Not maked');
                      }
                    }
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )),
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Color(0xFF3dd9d6)),
                  ),
                  child: Text(
                    '   sign up   ',
                    style: TextStyle(
                        color: Color(0xFF297171),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  response,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(context);
                  },
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF60a09d),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
