import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_up();
}

class _Sign_up extends State<Sign_up> {
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
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            border: InputBorder.none,
                            hintText: 'Enter your email'),
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
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.fingerprint_outlined,
                            ),
                            border: InputBorder.none,
                            hintText: 'Enter your password',
                            suffixIcon: Icon(Icons.remove_red_eye_outlined)),
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
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.fingerprint_outlined,
                            ),
                            border: InputBorder.none,
                            hintText: 'Enter your password again',
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