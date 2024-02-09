import 'package:flutter/material.dart';
import 'package:dashboard/bar_graph.dart';
import 'package:dashboard/bar_data.dart';
import 'package:dashboard/individual_bar.dart';
import 'package:dashboard/chart.dart';



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final List<double> weeklySummary = [5000, 8745, 3698, 1000, 7832, 6781, 217, 7423, 9873, 4758, 7412, 3698];

   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),

      // Passer weeklySummary à MyHomePage
      home: MyHomePage(title: 'Flutter Demo Home Page', weeklySummary: weeklySummary),
    );
  }
}


class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title, required List<double> weeklySummary}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(top: 20, left: 5),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.home, color: Colors.white),
                                    Text(
                                      'Dashboard',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.account_circle, color: Colors.white),
                                      SizedBox(width: 2),
                                      Text('Profile',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.fitness_center, color: Colors.white),
                                      SizedBox(width: 2),
                                      Text('Exercise',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.settings, color: Colors.white),
                                      SizedBox(width: 2),
                                      Text('Settings',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.history, color: Colors.white),
                                      SizedBox(width: 2),
                                      Text('History',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 20),
                                  child: Row(
                                    children: [
                                      Icon(Icons.logout, color: Colors.white),
                                      SizedBox(width: 2),
                                      Text('Signout',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SearchBar(
                            leading: Icon(Icons.search),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.local_fire_department, color: Colors.white,),
                          Text('1005', style: TextStyle(color: Colors.white)),
                          Text('Calories burned', style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.do_not_step, color: Colors.white,),
                          Text('10475', style: TextStyle(color: Colors.white)),
                          Text('Steps', style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.directions_run, color: Colors.white,),
                          Text('12', style: TextStyle(color: Colors.white)),
                          Text('Kilometers', style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.bed, color: Colors.white,),
                          Text('8', style: TextStyle(color: Colors.white)),
                          Text('Sleep', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),


          Expanded(
            flex: 1,
            child: Container(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            radius: 50,
                            child: Icon(Icons.account_circle, size: 100,),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (
                                Text('User', style: TextStyle(fontSize: 20, color: Colors.white), )
                               )
                          ],
                        ),
                      ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('Weight', style: TextStyle(color: Colors.white)),
                          Text('X kg', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('Height', style: TextStyle(color: Colors.white)),
                          Text('X cm', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          Text('BloodType', style: TextStyle(color: Colors.white)),
                          Text('Red', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
                      Container(
                          alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        child:
                        Text('Scheduled', style: TextStyle(color: Colors.white, fontSize: 15),),
                      ),
                      Container(margin: EdgeInsets.only(top: 20, left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Title(color: Colors.white, child: Text(' Flutter exam', style: TextStyle(fontSize: 15, color: Colors.white),)),
                            Icon(Icons.more_horiz, size: 20, color: Colors.white)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                          margin: EdgeInsets.only( left: 10),
                          child: Text('Today, 9am 5pm', style: TextStyle(fontSize: 10, color: Colors.white) )
                      )
                  ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


