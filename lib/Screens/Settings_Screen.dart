import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50,left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Settings",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),),
          SizedBox(height: 30,),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/doctor1.jpg"),
            ),
            title: Text("User Name",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            subtitle: Text("Profile",style: TextStyle(
              fontSize: 16,
            ),),
          ),
          Divider(height: 50,),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.deepPurpleAccent
              ),
              child: Icon(CupertinoIcons.person,
              color: Colors.white,
              size: 35
              ),
            ),
            title: Text("Profile",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),),
            trailing: Icon(
              CupertinoIcons.forward,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent
              ),
              child: Icon(CupertinoIcons.bell,
                  color: Colors.white,
                  size: 35
              ),
            ),
            title: Text("Notification",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),
            trailing: Icon(
              CupertinoIcons.forward,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent
              ),
              child: Icon(Icons.privacy_tip_outlined,
                  color: Colors.white,
                  size: 35
              ),
            ),
            title: Text("Privacy",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),
            trailing: Icon(
              CupertinoIcons.forward,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent
              ),
              child: Icon(Icons.settings_suggest_outlined,
                  color: Colors.white,
                  size: 35
              ),
            ),
            title: Text("General Settings",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),
            trailing: Icon(
              CupertinoIcons.forward,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent
              ),
              child: Icon(Icons.info_outline,
                  color: Colors.white,
                  size: 35
              ),
            ),
            title: Text("About Us",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),
            trailing: Icon(
              CupertinoIcons.forward,
              size: 28,
              color: Colors.deepPurpleAccent,
            ),
          ),
          Divider(height: 50,),
          ListTile(
            onTap: (){},
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red
              ),
              child: Icon(Icons.logout_outlined,
                  color: Colors.white,
                  size: 35
              ),
            ),
            title: Text("Log Out",style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
            ),),
            trailing: Icon(
              CupertinoIcons.forward,
              size: 28,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
