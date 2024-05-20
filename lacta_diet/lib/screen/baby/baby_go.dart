import 'package:flutter/material.dart';
import 'package:lacta_diet/screen/baby/babypg.dart';
import 'package:lacta_diet/screen/baby/eight_ten.dart/rice_mashed.dart';
import 'package:lacta_diet/screen/baby/eight_ten.dart/rice_pudding.dart';

import 'package:lacta_diet/screen/baby/model.dart';

class MyBabyGo extends StatelessWidget {
  final List _photos =[
    Data(image: "images/baby_bb.jpg", text: "Rice Pudding"),
    Data(image: "images/daal.jpg", text: "Khichdi"),

  ];
   MyBabyGo({super.key});

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyRicePudding()));
                }else if(index == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyRiceMashed()));
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
