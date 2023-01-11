// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentapp/Screens/loginscreen.dart';
import 'package:rentapp/library/imageviewer.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});

  @override
  State<EmailVerificationPage> createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text('Confirm your email'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                CommonImageView(
                  svgPath: 'assets/images/verify.svg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * (0.5),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          height: MediaQuery.of(context).size.height * (0.37),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ListView(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Text(
                  'A verification email has been sent to your registered email.',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 23),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Have not received any email yet.',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(right: 40, left: 40),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.deepPurple.shade400,
                      Colors.deepPurple.shade400
                    ]),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: 400,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EmailVerificationPage(),
                      ),
                    ),
                    child: Text(
                      "Resend Email",
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
