import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_pro_2/Screens/Home_Screen.dart';
import 'package:flutter_pro_2/Screens/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: Image.asset("assets/images/Welc_Scr_Image.jpg"),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Colors.deepPurpleAccent,
                    label: Text("Enter Username"),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  obscureText: passToggle,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.deepPurpleAccent,
                      label: Text("Enter Password"),
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle = !passToggle;
                          });
                        },
                        child: passToggle
                            ? Icon(CupertinoIcons.eye_slash_fill)
                            : Icon(CupertinoIcons.eye_fill),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(
                    //     builder: (context) => HomeScreen()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 43),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have any account ?",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                      },
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                          fontSize: 17,
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
