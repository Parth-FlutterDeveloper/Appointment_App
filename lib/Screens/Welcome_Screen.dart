import 'package:flutter/material.dart';
import 'package:flutter_pro_2/Screens/log_in_screen.dart';
import 'package:flutter_pro_2/Screens/sign_up_screen.dart';
import 'package:flutter_pro_2/widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height, // it cover full height of any phone
        width: MediaQuery.of(context).size.width,  // it cover full width of any phone
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(
                  //     builder: (context) => ));
                },
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => NavBarRoots()));
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 65,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/images/Welc_Scr_Image.jpg"),
            ),
            SizedBox(height: 60,),
            Text(
              "Doctors Appointment",
              style: TextStyle(
                color: Colors.deepPurpleAccent,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                wordSpacing: 2,
                letterSpacing: 1
              ),
            ),
            SizedBox(height: 8,),
            Text(
              "Appoint Your Doctor",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 13,horizontal: 43),
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
                Material(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignUpScreen()));
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 13,horizontal: 36),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
