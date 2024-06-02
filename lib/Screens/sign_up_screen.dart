import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pro_2/Screens/log_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.all(20),
                child: Image.asset("assets/images/Welc_Scr_Image.jpg"),
              ),
              SizedBox(height: 20,),
              Padding(
                  padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Create Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.mail),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 10,right: 20,bottom: 10),
                child: TextField(
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Create Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_slash_fill)
                          : Icon(CupertinoIcons.eye_fill),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Material(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(
                    //     builder: (context) => HomeScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 25),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 58,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have a account ?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
