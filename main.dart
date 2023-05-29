import 'package:flutter/material.dart';
import 'package:sample/Sign%20in.dart';
import 'package:sample/Sign%20up.dart';

void main() {
  runApp(const Sign_in());
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF232323),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.ac_unit_sharp,
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
                      color: Color(0xFFe6efee)),
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
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.account_circle_outlined),
                            border: InputBorder.none,
                            hintText: 'Email'),
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
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.fingerprint_outlined,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                      color: Color(0xFF60a09d),
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
                        runApp(Sign_up());
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
    ));
  }
}
