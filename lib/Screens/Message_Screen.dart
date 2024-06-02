import 'package:flutter/material.dart';
import 'package:flutter_pro_2/Screens/Chat_Screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List imgs = [
      "doctor1.jpg",
      "doctor3.jpg",
      "doctor2.jpg",
      "doctor1.jpg",
      "doctor2.jpg",
      "doctor3.jpg",
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Messages',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 3,
                    blurRadius: 4
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 280,
                    height: 40,
                    margin: EdgeInsets.only(left: 15),
                    child: Padding(
                      padding: EdgeInsets.only(top: 18),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search Here...'
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.search,
                        color: Colors.deepPurpleAccent,
                      )
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Active Now',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20
            ),),
          ),
          SizedBox(height: 14),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.only(left: 16,right: 6),
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 4,
                          blurRadius: 3
                        )
                      ]
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset("assets/images/${imgs[index]}",
                              fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(2),
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              itemCount: imgs.length,
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Text('Recent Chat',style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20
            ),),
          ),
          ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return ListTile(
                minVerticalPadding: 18,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Chat_Screen()
                  ));
                },
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/${imgs[index]}"),
                ),
                title: Text("Do. Doctor Name",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20
                ),),
                subtitle: Text("Hello, Doctor are you there?",style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300
                ),),
                trailing: Text("12:30",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400
                ),),
              );
            },
          ),
        ],
      ),
    );
  }
}
