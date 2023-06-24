import 'package:flutter/material.dart';

import 'Home page.dart';
import 'Sign up.dart';


class Sign_in extends StatefulWidget {
  const Sign_in({Key? key}) : super(key: key);

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
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
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
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
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const Home_page()),
                    );
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
