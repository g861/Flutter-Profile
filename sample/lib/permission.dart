import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample/camera_option.dart';
// Here Our task is to ask for the user permission and display it 

class Permissions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Column(
        children:<Widget>[
          Container(
            margin: EdgeInsets.only(top:30,left: 25, bottom: 30),
            padding: EdgeInsets.only(top: 30, left: 25, right: 30),
            child:Text(
              "UserName",
              style: TextStyle(
                color: Colors.purple[400],
                fontSize: 30.0 , 
                fontWeight: FontWeight.w700,
              ),
            )
          ),
          // To create another Container 
          Container(
            margin: EdgeInsets.only(top:10),
            padding: EdgeInsets.only(top:10 , left: 20 , right : 20),
            child:Text(
              "To Enable AI in the Application Please Grant the following Permissions",
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 15.0 , 
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
            Container(    
              margin: EdgeInsets.all(35),  
              child: FlatButton(  
                child: Text('Enable', style: TextStyle(fontSize: 20.0),),  
                color: Colors.purple[600],  
                height: 50,
                minWidth: 200,
                textColor: Colors.white,  
                onPressed: () {
                  main();
                },  
              ),  
            ), 
            Container(    
              margin: EdgeInsets.all(5),  
              child: FlatButton(  
                child: Text('Disable', style: TextStyle(fontSize: 20.0),),  
                color: Colors.grey[400],  
                height: 50,
                minWidth: 200,
                textColor: Colors.white,  
                onPressed: (
                  
                ) {},  
              ),  
            ), 
        ],
      ),
    );
  }
}


