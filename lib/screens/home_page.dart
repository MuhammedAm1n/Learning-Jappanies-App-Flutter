import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/family_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrasespage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext homepage) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
          title: Text('Learning Jappanes'), backgroundColor: Colors.black),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Category(
              text: 'Numbers',
              color: Colors.cyan,
              onTap: () {
                Navigator.push(homepage,
                    MaterialPageRoute(builder: (context) {
                  return Numberspage();
                }));
            },),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Category(onTap:() { Navigator.push(homepage,
                    MaterialPageRoute(builder: (context) {
                  return family( );
                }));
              
            } ,text: 'FamilyMembers',color: Colors.orange[600],),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Category(
              onTap: () {
               Navigator.push(homepage,
                MaterialPageRoute(builder: (homepage) {return colorslist(); }));
              },
              
              text: 'Colors',color: Colors.red[600],),
          ),
          Category(
            onTap: () {
              Navigator.push(homepage, MaterialPageRoute(builder:(homepage) {return phraseslist();}));
            },
            text: 'Phrases',color: Color.fromARGB(255, 73, 116, 111),),  
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
   Category({this.text,this.color,this.onTap }) ;
   
   String? text;
   Color? color;
   VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(  
        // ignore: unnecessary_new
        decoration: new BoxDecoration(

          shape: BoxShape.rectangle,
            color: color, 
             border: Border.all(color: Colors.black ,width: 3),
        ),
              padding: const  EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              height: 60,
              width: double.infinity,
              
              child: Text(
                text!,
                style: const  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
    );
  
  }
}