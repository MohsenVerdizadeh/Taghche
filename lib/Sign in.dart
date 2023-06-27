import 'dart:io';

import 'package:flutter/material.dart';

import 'Home page.dart';
import 'Sign up.dart';
import 'oop classes/Models.dart';
import 'oop classes/static_fields.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  String response = '';
  String showMessage = '';
  bool _passwordVisibility = true;
  TextEditingController _usernameController = TextEditingController(text: "");
  TextEditingController _passwordController = TextEditingController(text: "");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'password is required';
    } else {
      return "~~";
    }
  }

  confirmUser(User user) async {
    await Socket.connect(StaticFields.ip, StaticFields.port)
        .then((serverSocket) {
      final data = "sign in&&" + userToJson(user) + StaticFields.postFix;
      serverSocket.write(data);
      serverSocket.flush();
      serverSocket.listen((res) {
        setState(() {
          response = (String.fromCharCodes(res));
          if (response == "Username does not exist" ||
              response == "Password is incorrect") {
            showMessage = response;
          } else {
            showMessage = "Sign in was successfully";
          }
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
                  'SIGN IN',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                //email textField
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
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            border: InputBorder.none,
                            hintText: 'username'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //password textField
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
                              Icons.lock_outlined,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(Icons.remove_red_eye,
                                  color: Color(0xFF3dd9d6)),
                              onPressed: () {
                                setState(() {
                                  _passwordVisibility = !_passwordVisibility;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (validateUsername(_usernameController.text) == "~~" &&
                        validatePassword(_passwordController.text) == "~~") {
                      confirmUser(User(
                        username: _usernameController.text,
                        email: "",
                        password: _passwordController.text,
                        credit: 0,
                        ebooks: [],
                        audiobooks: [],
                      ));
                      if (response == "Password is incorrect" ||
                          response == "Username does not exist") {
                      } else {
                        StaticFields.activeUser = userFromJson(response);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Home_page()),
                        );
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
                    '   sign in   ',
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
                  showMessage,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF60a09d),
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                //sign up
                Text(
                  'OR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 50),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const Sign_up()),
                        );
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF60a09d),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
