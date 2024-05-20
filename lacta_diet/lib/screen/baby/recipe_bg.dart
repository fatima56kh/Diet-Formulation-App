import 'package:flutter/material.dart';
import 'package:lacta_diet/screen/baby/babypg.dart';
import 'package:lacta_diet/screen/baby/mashedbanana.dart';
import 'package:lacta_diet/screen/baby/model.dart';
import 'package:lacta_diet/screen/baby/six_eight.dart/sweet_potato.dart';
import 'package:lacta_diet/screen/baby/six_eight.dart/yogurt.dart';

class PageRecipe extends StatelessWidget {
  final List _photos =[
    Data(image: "images/funny.jpg", text: "Sweet Potato "),
    Data(image: "images/yogurt.jpg", text: "Yogurt with fruits"),

  ];
   PageRecipe({super.key});

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyBabySweet()));
                }else if(index == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyBabyYogurt()));
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
