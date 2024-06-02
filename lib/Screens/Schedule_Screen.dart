import 'package:flutter/material.dart';
import 'package:flutter_pro_2/widgets/Upcoming_Schedule.dart';

class Schedule_Screen extends StatefulWidget {
  const Schedule_Screen({super.key});

  @override
  State<Schedule_Screen> createState() => _Schedule_ScreenState();
}

class _Schedule_ScreenState extends State<Schedule_Screen> {

int _buttonIndex = 0;

final _scheduleWidgets = [

  // Upcoming Schedule
  Upcoming_Schedule(),
  // Completed Schedule
  Container(),
  // Canceled Schedule
  Container(),

];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Schedule',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: _buttonIndex == 0
                          ? Colors.deepPurpleAccent
                            : Colors.white
                      ),
                      child: Text('Upcoming',style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                          color: _buttonIndex == 0
                              ? Colors.white
                              : Colors.black
                      ),),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: _buttonIndex == 1
                              ? Colors.deepPurpleAccent
                              : Colors.white
                      ),
                      child: Text('Completed',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 1
                              ? Colors.white
                              : Colors.black
                      ),),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: _buttonIndex == 2
                              ? Colors.deepPurpleAccent
                              : Colors.white
                      ),
                      child: Text('Canceled',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: _buttonIndex == 2
                              ? Colors.white
                              : Colors.black
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28,),
            _scheduleWidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
