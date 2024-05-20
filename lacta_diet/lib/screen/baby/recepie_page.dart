
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lacta_diet/screen/baby/babypg.dart';
import 'package:lacta_diet/screen/baby/mashedbanana.dart';

import 'package:lacta_diet/screen/baby/model.dart';


class MyPageRecepie extends StatelessWidget {

 final List _photos =[
    Data(image: "images/baby_bb.jpg", text: "recipe 1"),
    Data(image: "images/baby_view.jpg", text: "recipe 2"),
    Data(image: "images/baby_bg.jpg", text: "recipe 3"),
    Data(image: "images/baby_go.jpg", text: "recipe 4"),
  ];

   MyPageRecepie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade100,
        title: Text('Recipes', style: TextStyle(
            fontWeight: FontWeight.bold,
          color: Colors.orange
        ),),
        centerTitle: true,
      ),
      body: GridView.builder(

        itemCount: _photos.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),

      itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              if(index == 0){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyMashed_banana()));
              }else if(index == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyBabyPage()));
              }
            },
            child: Column(
              children: [



                    Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 200,

                      decoration: BoxDecoration(
                          color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        image:DecorationImage(image: AssetImage(_photos[index].image),
                          fit: BoxFit.cover)),
                    ),

                   ),


                SizedBox(height: 10.0,),
                Text(_photos[index].text)

              ],

            ),
          );

      }
    ),
    );
  }
}
