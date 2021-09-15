import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({ Key? key }) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xfffad744),
              Color(0xffef5455),
              Color(0xff4C6CD7),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight, 
          )
        ),  
        child: SpinKitPianoWave(
          size: 40,
          color: Colors.white,
        )
      ),
    );
  }
}