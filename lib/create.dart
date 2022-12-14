import 'package:flutter/material.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 15),
            child: Center(
              child: Column(
                children: [
                  // Text(
                  //   'Hello there!👋',
                  //   style: TextStyle(
                  //       color: Colors.black45,
                  //       fontSize: 40.0,
                  //       fontWeight: FontWeight.bold,
                  //       fontFamily: 'Po'),
                  // ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    // padding: EdgeInsets.only(left: 20),
                    child: Text('Get started us with us.',
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Po')),
                  ),

                  // RichText(
                  //     text: TextSpan(children: [
                  //   TextSpan(
                  //       text: 'Get Started with us',
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold,
                  //           fontSize: 40.0,
                  //           fontFamily: 'Po',
                  //           color: Colors.black45)),
                  //   TextSpan(
                  //       text: '👋',
                  //       style: TextStyle(
                  //           fontSize: 40,
                  //           // backgroundColor: Colors.deepPurple,
                  //           color: Colors.deepPurple)),
                  // ])),

                  SizedBox(
                    height: 13,
                  ),

                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Lets create an account for you ✔️',
                      style: TextStyle(
                          fontFamily: 'Po',
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Divider(color: Colors.black , height: 1,),

                  _forall('Email'),
                  _forall('Username'),
                  _forall('Full Name'),
                  _forAllPassword('Password'),
                  _forAllPassword('Confirm your password'),

                  SizedBox(
                    height: 16,
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 18),
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Create Account',
                          style: TextStyle(
                              fontFamily: 'Po',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        icon: Icon(
                          Icons.create,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.deepPurple,
                        )),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        label: Text(
                          'Sign-In',
                          style: TextStyle(
                              fontFamily: 'Po',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        icon: Icon(
                          Icons.login,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.deepPurple,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _forAllPassword(String typeof) {
    return Container(
      width: double.infinity,
      height: 80,
      // margin: EdgeInsets.only(bottom: ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        // border: Border(top: BorderSide(width: 2.0))
      ),
      child: TextField(
        cursorColor: Colors.deepPurple,
        obscureText: true,
        style: TextStyle(
          fontFamily: 'Po',
          fontSize: 17.0,
          letterSpacing: 0.4,
        ),

        // ignore: prefer_const_constructors
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(12, 35, 0, 10),
            hintText: typeof,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(2.0))),

        // controller: _emailController,
      ),
    );
  }

  _forall(String typeof) {
    return Container(
      width: double.infinity,
      height: 80,
      margin: EdgeInsets.only(top: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        // border: Border(top: BorderSide(width: 2.0))
      ),
      child: TextField(
        cursorColor: Colors.deepPurple,
        style: TextStyle(
          fontFamily: 'Po',
          fontSize: 17.0,
          letterSpacing: 0.4,
        ),

        // ignore: prefer_const_constructors
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(12, 35, 0, 10),
            hintText: typeof,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.deepPurple),
                borderRadius: BorderRadius.circular(2.0))),
      ),
    );
  }
}
