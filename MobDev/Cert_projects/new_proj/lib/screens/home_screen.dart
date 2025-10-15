import 'package:flutter/material.dart';
import 'package:new_proj/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
            },
            child: Text("Next Screen"),
          ),
        ),
      ),
    );
  }
}
