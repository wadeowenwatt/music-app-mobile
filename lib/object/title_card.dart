import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  
  TitleCard({required this.title, required this.description, required this.list});

  final String title;
  final String description;
  final Widget list; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        children: <Widget> [
          Expanded(
            flex: 1,
            child: _TitleDescip(
              title: title,
              description: description,
            ),
          ),
          Expanded(
            flex: 4,
            child: list,
          )
        ],
      )
    );
  }
}

class _TitleDescip extends StatelessWidget {
  
  const _TitleDescip({
    Key? key,
    required this.title,
    required this.description
  }): super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle( 
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 2.0),),
          Text(
            description,
            style: TextStyle(
              fontSize: 15.0,
            )
          ),  
        ],
      ),
    );
  }
}
