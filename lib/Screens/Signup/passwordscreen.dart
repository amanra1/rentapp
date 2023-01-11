// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentapp/Screens/Signup/emailverification.dart';
import 'package:rentapp/Screens/loginscreen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isVisible = true;
  AssetImage? image;

  @override
  void initState() {
    image = AssetImage('assets/gif/Signup.gif');
    super.initState();
  }

  @override
  void dispose() {
    image!.evict();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: image as ImageProvider,
                  height: MediaQuery.of(context).size.height * (0.5),
                  width: MediaQuery.of(context).size.width,
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
          height: MediaQuery.of(context).size.height * (0.57),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ListView(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Text(
                  'Signup',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Hi Welcome',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: !_isVisible,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_rounded),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? Icon(
                                Icons.visibility,
                                color: Colors.grey.shade500,
                              )
                            : Icon(
                                Icons.visibility_off,
                                color: Colors.grey.shade500,
                              ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      contentPadding: EdgeInsets.only(right: 20, left: 20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintStyle:
                          TextStyle(fontSize: 16, color: Colors.grey.shade700),
                      hintText: "Password"),
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
                  child: TextButton.icon(
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
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Continue",
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
