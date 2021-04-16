import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sample/HomePage.dart';
void main() =>  runApp(new MaterialApp(
    theme: 
          ThemeData(primaryColor: Colors.red , accentColor:Colors.yellowAccent),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
  )) ;

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() { 
    super.initState();
    Timer(Duration(seconds:5), ()=> 
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => HomePage())
      )
    );
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration : BoxDecoration(color: Colors.purple[400]),
            ),
            Column(
              
              mainAxisAlignment: MainAxisAlignment.start,

              children : <Widget>[
                Expanded(
                  flex:2,
                  child:Container(
                    child:Column(
                      mainAxisAlignment : MainAxisAlignment.center ,
                      children : <Widget>[
                        CircleAvatar(
                          backgroundColor : Colors.white , 
                          radius: 50.0 , 
                          child : Icon(
                            Icons.movie_creation_sharp,
                            size: 50.0, 
                            color: Colors.purple[500],
                          )
                        ),
                        Padding(
                          padding : EdgeInsets.only(top:10.0),
                        ),
                        Text(
                          "Smart Media Player ",
                          style: TextStyle(
                            color:Colors.white,
                            fontSize: 25.0 ,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex:1 , 
                  child: Column(
                    mainAxisAlignment : MainAxisAlignment.center,
                    children:<Widget>[
                      CircularProgressIndicator(),
                      Padding(
                       padding: EdgeInsets.only(top:20.0),
                      ),
                      Text('AI enabled Media \n           Player ' , 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,                        
                      ),
                      ),
                    ],
                  )
                )
              ],
            ),
          ],
        ),
    );
  }
}