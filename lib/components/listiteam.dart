
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/Models/Item.dart';

class ListItem extends StatelessWidget {
  ListItem({required this.items,required this.color,required this.iteamType});
  final item items;
  final Color? color;
  final String iteamType; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(items.image!)),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Text(
            items.text,
            style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
            items.text1,
                style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ]),
          ),
          
          
          Spacer(flex: 1),
            IconButton(
            onPressed: () {
             final AudioCache player = AudioCache(prefix:'assets/sounds/$iteamType/');
              player.play(items.sounds);
            },
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
          )
        ],
      )
      
      
      ,);
  }
}

class PhraseItem extends StatelessWidget {
  PhraseItem({required this.items,required this.color,required this.iteamType});
  final item items;
  final Color? color;
  final String iteamType; 
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Text(
            items.text,
            style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
            items.text1,
                style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ]),
          ),
          
          
          Spacer(flex: 1),
            IconButton(
            onPressed: () {
             final AudioCache player = AudioCache(prefix:'assets/sounds/$iteamType/');
              player.play(items.sounds);
            },
            icon: Icon(Icons.play_arrow),
            color: Colors.white,
          )
        ],
      )
      
      
      ,);
  }
}



