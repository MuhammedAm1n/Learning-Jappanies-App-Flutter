import 'package:flutter/material.dart';
import 'package:toku/Models/Item.dart';

import 'package:toku/components/listiteam.dart';

class Numberspage extends StatelessWidget {
  Numberspage({Key? key}) : super(key: key);

  final List<item> nlist = const [
    (item(
        image: 'assets/images/numbers/number_two.png',
        text: 'ichi',
        text1: 'one',sounds:'number_one_sound.mp3' )),
    item(
        image: 'assets/images/numbers/number_two.png',
        text: 'Ni',
        text1: 'two',sounds: 'number_two_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_three.png',
        text: 'san',
        text1: 'three',sounds: 'number_three_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_four.png',
        text: 'shi',
        text1: 'four',sounds: 'number_four_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_five.png',
        text: 'Go',
        text1: 'five',sounds: 'number_five_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_six.png',
        text: 'Roku',
        text1: 'six',sounds: 'number_six_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_seven.png',
        text: 'Sebun',
        text1: 'seven',sounds: 'number_seven_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_eight.png',
        text: 'hachi',
        text1: 'eight',sounds: 'number_eight_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_nine.png',
        text: 'Kyu',
        text1: 'nine',sounds: 'number_nine_sound.mp3'),
    item(
        image: 'assets/images/numbers/number_ten.png', text: 'Ju', text1: 'ten',sounds: 'number_ten_sound.mp3')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 240, 237, 237),
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        itemCount: nlist.length,
        itemBuilder: (context, index) {
          return ListItem(items: nlist[index],color:Colors.black,
          iteamType: 'numbers',);
        },
      ),
    );
  }
}




