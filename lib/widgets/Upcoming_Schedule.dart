import 'package:flutter/material.dart';

class Upcoming_Schedule extends StatelessWidget {
  const Upcoming_Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Appointment',style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  spreadRadius: 3,
                ),
              ]
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Do. Doctor Name',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('Therapist'),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("18/03/2024",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.access_time_filled,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("10:30 PM",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("Confirmed",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Cancel',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18
                            ),),
                          ),
                        ),
                        SizedBox(width: 25,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Reschedule',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 3,
                  ),
                ]
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Do. Doctor Name',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('Therapist'),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                              Icons.date_range,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("18/03/2024",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.access_time_filled,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("10:30 PM",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("Confirmed",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Cancel',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18
                            ),),
                          ),
                        ),
                        SizedBox(width: 25,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Reschedule',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 3,
                  ),
                ]
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Do. Doctor Name',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('Therapist'),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                              Icons.date_range,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("18/03/2024",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.access_time_filled,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("10:30 PM",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("Confirmed",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Cancel',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18
                            ),),
                          ),
                        ),
                        SizedBox(width: 25,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Reschedule',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 3,
                  ),
                ]
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Do. Doctor Name',style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),),
                    subtitle: Text('Therapist'),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/doctor1.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      height: 20,
                      thickness: 1,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                              Icons.date_range,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("18/03/2024",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                              Icons.access_time_filled,
                              color: Colors.black54
                          ),
                          SizedBox(width: 5,),
                          Text("10:30 PM",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("Confirmed",style: TextStyle(
                            fontWeight: FontWeight.w400,
                          ),)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Cancel',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 18
                            ),),
                          ),
                        ),
                        SizedBox(width: 25,),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.deepPurpleAccent,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Text('Reschedule',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
