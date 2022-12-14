import 'package:flutter/material.dart';
import 'package:loginfirebase/create.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 170, horizontal: 15),
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

                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'Hello There',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                            fontFamily: 'Po',
                            color: Colors.black45)),
                    TextSpan(
                        text: '👋', style: TextStyle(fontSize: 40 ,
                        // backgroundColor: Colors.deepPurple,
                         color: Colors.deepPurple)),
                  ])),
                  Icon(
                    Icons.android,
                    size: 100,
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    'We have created for you',
                    style: TextStyle(
                        fontFamily: 'Po',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  // Divider(color: Colors.black , height: 1,),

                  Container(
                    width: double.infinity,
                    height: 80,
                    margin: EdgeInsets.only(top: 19),
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
                          hintText: 'Email',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(2.0))),

                      controller: _emailController,
                    ),
                  ),
                  Container(
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
                          hintText: 'Password',
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.deepPurple),
                              borderRadius: BorderRadius.circular(2.0))),

                      controller: _emailController,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forget password?',
                      style:
                          TextStyle(color: Colors.blueAccent, fontFamily: 'Po'),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        label: Text(
                          'Sign-In',
                          style: TextStyle(
                              fontFamily: 'Po',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        icon: Icon(
                          Icons.android_sharp,
                          color: Colors.white,
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                          backgroundColor: Colors.deepPurple,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 18),
                    // width: MediaQuery.of(context).size.width * 0.65,
                    child: Text('Or' , style: TextStyle(
                      color: Colors.grey[800],
                      fontFamily: 'Po',
                      fontSize: 24,
                      fontWeight: FontWeight.bold 
                    ),),
                  ),
                   Container(
                      margin: EdgeInsets.only(top: 18),
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Create()));
                        },
                        label: Text(
                          'Create Account',
                          style: TextStyle(
                              fontFamily: 'Po',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        icon: Icon(
                          Icons.android_sharp,
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
        ));
  }
}
