import 'package:flutter/material.dart';
import 'package:sample/permission.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        
        body: Center(
          child: Text(
            "Welcome to Smart Media Player ",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            color: Colors.purple[400],
          ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.skip_next_outlined),
          backgroundColor: Colors.purple[300],
          onPressed: () {
           Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Permissions()),
                 );
            print("Proceed to next Page ");
          },  
        ),
        );
  }
}