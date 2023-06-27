import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project/Home%20page.dart';
import 'package:project/oop%20classes/static_fields.dart';

import '../Sign in.dart';
import '../oop classes/Models.dart';

class Account extends StatefulWidget {
  //final User user;

  const Account({Key? key /*, required this.user*/
      })
      : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  // final User user;
  // _AccountState(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF232323),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_outlined,
              color: Color(0xFF3dd9d6),
            ),
          ),
        ],
        backgroundColor: Color(0xFF297171),
        title: Text(
          'My Account',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'OoohBaby',
            fontWeight: FontWeight.bold,
            color: Color(0xFF3dd9d6),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF3dd9d6)),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(/*user.imageUrl*/ 'assets/images/2.jpg'),
              ),
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            /*user.name*/
            StaticFields.activeUser!.username +
                "\n" +
                StaticFields.activeUser!.email,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'OoohBaby',
              fontWeight: FontWeight.bold,
              color: Color(0xFF3dd9d6),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '\$ ' + StaticFields.activeUser!.credit.toString() /*+user.credit*/,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'OoohBaby',
              fontWeight: FontWeight.bold,
              color: Color(0xFF3dd9d6),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //increase credit
          MaterialButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => IncreaseCredit(
                          credit: StaticFields.activeUser!.credit,
                        )),
              );
            },
            child: Container(
              height: 30,
              width: 160,
              decoration: BoxDecoration(
                  color: Color(0xFF297171),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  '   Increase credit   ',
                  style: TextStyle(
                      color: Color(0xFF3dd9d6),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 220,
          ),
          //log out button
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            child: TextButton(
              onPressed: () {
                StaticFields.activeUser = null;
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Sign_in()),
                );
              },
              child: Text(
                'LOG OUT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IncreaseCredit extends StatelessWidget {
  final int credit;

  IncreaseCredit({required this.credit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232323),
      appBar: AppBar(
        backgroundColor: Color(0xFF297171),
        title: Center(
          child: Text(
            'Increase credit         ',
            style: TextStyle(
                fontFamily: 'OoohBaby',
                color: Color(0xFF3dd9d6),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '  Your credit is \$' + credit.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'OoohBaby',
                  color: Color(0xFF3dd9d6),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF297171),
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  '\$5',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'OoohBaby',
                    color: Color(0xFF3dd9d6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage(credit: 5)),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF297171),
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  '\$10',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'OoohBaby',
                    color: Color(0xFF3dd9d6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage(credit: 10)),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF297171),
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  '\$25',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'OoohBaby',
                    color: Color(0xFF3dd9d6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage(credit: 25)),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF297171),
            ),
            child: Center(
              child: ListTile(
                title: Text(
                  '\$50',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'OoohBaby',
                    color: Color(0xFF3dd9d6),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PaymentPage(credit: 50)),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaymentPage extends StatefulWidget {
  final int credit;

  const PaymentPage({Key? key, required this.credit}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF297171),
        title: Center(
          child: Text(
            'Payment page         ',
            style: TextStyle(
                fontFamily: 'OoohBaby',
                color: Color(0xFF3dd9d6),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
      ),
      backgroundColor: Color(0xFF232323),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          //Card
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xFF3dd9d6)),
                color: Color(0xFF297171),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      '1024  2548  3658  1547',
                      style: TextStyle(
                          fontFamily: 'OoohBaby',
                          color: Color(0xFF232323),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      StaticFields.activeUser!.username,
                      style: TextStyle(
                          fontFamily: 'OoohBaby',
                          color: Color(0xFF232323),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'CVV2 : 821',
                          style: TextStyle(
                              fontFamily: 'OoohBaby',
                              color: Color(0xFF232323),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text(
                          'Expiration date : 2023/12/7',
                          style: TextStyle(
                              fontFamily: 'OoohBaby',
                              color: Color(0xFF232323),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
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
                      hintText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                StaticFields.activeUser!.credit += widget.credit;
                print(StaticFields.activeUser!.credit);
              });
              increaseCredit();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const Home_page()),
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
              '   Pay   ',
              style: TextStyle(
                  color: Color(0xFF297171),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  void increaseCredit() async {
    await Socket.connect(StaticFields.ip, StaticFields.port)
        .then((serverSocket) {
      final data = "edit user&&" +
          userToJson(StaticFields.activeUser!) +
          StaticFields.postFix;
      serverSocket.write(data);
      serverSocket.flush();
    });
  }
}
