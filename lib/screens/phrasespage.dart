import 'package:flutter/material.dart';
import 'package:toku/Models/Item.dart';
import 'package:toku/components/listiteam.dart';

class  phraseslist extends StatelessWidget {
  const phraseslist({ Key? key }) : super(key: key);
final List<item> plist = const [
    (item(
        text: 'buraku',
        text1: 'are you coming',sounds:'are_you_coming.wav' )),
    item(
        text: 'brown',
        text1: 'how are you feeling',sounds: 'how_are_you_feeling.wav'),
    item(
        text: 'dusty yellow',
        text1: 'yes im coming',sounds: 'yes_im_coming.wav'),
    item(
        text: 'Hahoaya',
        text1: 'where are you going',sounds: 'where_are_you_going.wav'),
    item(
        text: 'Go',
        text1: 'programming is easy',sounds: 'programming_is_easy.wav'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 240, 237, 237),
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor:Color.fromARGB(255, 73, 116, 111),
      ),
      body: ListView.builder(
        itemCount: plist.length,
        itemBuilder: (context, index) {
          return PhraseItem(items: plist[index], color: Colors.blueGrey,
          iteamType: 'phrases',);
        },
      ),
  
    );
  }
}