import 'package:canine_care/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:canine_care/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}
final _auth = FirebaseAuth.instance;

class _MyLoginState extends State<MyLogin> {
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    return Container(



      decoration: BoxDecoration(


        color: Colors.white,
        image: DecorationImage(
          scale: 5,
          image: AssetImage('images/dog_banner.png'),

            //fit: BoxFit.cover
        ),
      ),


      child: Scaffold(

        backgroundColor: Colors.transparent,
        body: Stack(
          children: [

            /*Container(
              padding: EdgeInsets.only(left: 35, top: 120),
              child: Text(
                'Welcome Back',
                style: TextStyle(color:Color(0xff4c505b), fontSize: 33),
              ),
            ),*/

            Container(),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [

                          SizedBox(
                            height: 178,
                          ),
                          TextField(
                            onChanged: (value) {
                              email = value;
                              //Do something with the user input.
                            },
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(


                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            onChanged: (value) {
                              password = value;
                              //Do something with the user input.
                            },
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 27,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  onPressed: () async {
                                    setState(() {});
                                    try {
                                      final user = await _auth.signInWithEmailAndPassword(
                                          email: email, password: password);
                                      if (user != null) {
                                        Navigator.pushNamed(context, 'home_screen');
                                      }
                                    }  catch (e) {
                                      print(e);
                                    }
                                    ;
                                  }),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  MyRegister()),
                                  );
                                },
                                child: Text(
                                  'Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) =>  MyRegister()),
                                    );
                                  },
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4c505b),
                                      fontSize: 18,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}