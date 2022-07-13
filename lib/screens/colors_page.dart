import 'package:flutter/material.dart';
import 'package:toku/Models/Item.dart';
import 'package:toku/components/listiteam.dart';

class  colorslist extends StatelessWidget {
  const colorslist({ Key? key }) : super(key: key);
final List<item> clist = const [
    (item(
        image: 'assets/images/colors/color_black.png',
        text: 'buraku',
        text1: 'black',sounds:'black.wav' )),
    item(
        image: 'assets/images/colors/color_brown.png',
        text: 'brown',
        text1: 'Chairo',sounds: 'brown.wav'),
    item(
        image: 'assets/images/colors/color_dusty_yellow.png',
        text: 'dusty yellow',
        text1: 'dusty yellow',sounds: 'dusty yellow.wav'),
    item(
        image: 'assets/images/colors/color_white.png',
        text: 'white',
        text1: 'white',sounds: 'white.wav'),
    item(
        image: 'assets/images/colors/color_red.png',
        text: 'Go',
        text1: 'red',sounds: 'red.wav'),
    item(
        image: 'assets/images/colors/color_gray.png',
        text: 'Roku',
        text1: 'gray',sounds: 'gray.wav'),
    item(
        image: 'assets/images/colors/color_gray.png',
        text: 'seven',
        text1: 'green',sounds: 'green.wav'),
    item(
        image: 'assets/images/colors/color_black.png',
        text: 'hachi',
        text1: 'eight',sounds: 'number_seven_sound.mp3'),
    item(
        image:'assets/images/colors/color_black.png',
        text: 'Kyu',
        text1: 'nine',sounds: 'number_one_sound.mp3'),
    item(
        image: 'assets/images/colors/color_black.png', text: 'Ju', text1: 'ten',sounds: 'number_one_sound.mp3')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 240, 237, 237),
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: Colors.red[600],
      ),
      body: ListView.builder(
        itemCount: clist.length,
        itemBuilder: (context, index) {
          return ListItem(items: clist[index], color: Colors.blueGrey,
          iteamType: 'colors',);
        },
      ),
  
    );
  }
}