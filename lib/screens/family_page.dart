import 'package:flutter/material.dart';
import 'package:toku/Models/Item.dart';
import 'package:toku/components/listiteam.dart';

class  family extends StatelessWidget {
  const family({ Key? key }) : super(key: key);
final List<item> itlist = const [
    (item(
        image: 'assets/images/family_members/family_son.png',
        text: 'Nusqo',
        text1: 'son',sounds:'son.wav' )),
    item(
        image: 'assets/images/family_members/family_daughter.png',
        text: 'Musume',
        text1: 'daughter',sounds: 'daughter.wav'),
    item(
        image: 'assets/images/family_members/family_father.png',
        text: 'Chichoya',
        text1: 'father',sounds: 'father.wav'),
    item(
        image: 'assets/images/family_members/family_mother.png',
        text: 'Hahoaya',
        text1: 'mother',sounds: 'mother.wav'),
    item(
        image: 'assets/images/family_members/family_daughter.png',
        text: 'Nisan',
        text1: 'older bother',sounds: 'older bother.wav'),
    item(
        image: 'assets/images/family_members/family_daughter.png',
        text: 'Subo',
        text1: 'grand mother',sounds: 'grand mother.wav'),
    item(
        image: 'assets/images/family_members/family_daughter.png',
        text: 'Ogesan',
        text1: 'grand father',sounds: 'grand father.wav'),
    item(
        image: 'assets/images/family_members/family_daughter.png',
        text: 'Emoto',
        text1: 'younger sister',sounds: 'younger sister.wav'),
    item(
        image:'assets/images/family_members/family_daughter.png',
        text: 'Ototo',
        text1: 'younger brohter',sounds: 'younger brohter.wav'),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(223, 240, 237, 237),
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: Colors.orange[600],
      ),
      body: ListView.builder(
        itemCount: itlist.length,
        itemBuilder: (context, index) {
          return ListItem(items: itlist[index], color: Colors.blueGrey,
          iteamType: 'family_members',);
        },
      ),
  
    );
  }
}