
import 'package:flutter/material.dart';
import 'package:lacta_diet/screen/baby/Baby_sleep.dart';
import 'package:lacta_diet/screen/baby/Baby_todo.dart';
import 'package:lacta_diet/screen/baby/baby_go.dart';
import 'package:lacta_diet/screen/baby/recepie_page.dart';
import 'package:lacta_diet/screen/baby/recipe_bg.dart';

class MyBabyPage extends StatefulWidget {
  const MyBabyPage({super.key});

  @override
  State<MyBabyPage> createState() => _MyBabyPageState();
}

class _MyBabyPageState extends State<MyBabyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Container(
          width: 100,
          child: Image.asset('images/grey.png'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Starting Solid Foods',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5.0),
              Center(
                child: Text(
                  'Choose your baby\'s age:',
                  style: TextStyle(fontSize: 18,),
                ),

              ),

              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,

                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyPageRecepie()));

                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.deepPurple.shade200,

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow[500]),
                            SizedBox(width: 8.0), // add some space between icon and text
                            Text('0-5 months'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // add some space between containers

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PageRecipe()));

                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orangeAccent.shade200,

                        ),

                      
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow[500]),
                            SizedBox(width: 8.0), // add some space between icon and text
                            Text('6-8 months'),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(height: 16.0), // add some space between containers
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBabyGo()));

                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.brown.shade200,

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow[500]),
                            SizedBox(width: 8.0), // add some space between icon and text
                            Text('8-10 months'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0), // add some space between containers
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBabySleep()));

                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent.shade200,

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow[500]),
                            SizedBox(width: 8.0), // add some space between icon and text
                            Text('11-12 months'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0), // add some space between containers
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyBabyTodo()));

                      },
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent.shade200,

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.star, color: Colors.yellow[500]),
                            SizedBox(width: 8.0), // add some space between icon and text
                            Text('2+ year'),
                          ],
                        ),
                      ),
                    ),




                  ],
                ),
              ),
            ],

          ),
        ),
      ),


    );



  }
}
