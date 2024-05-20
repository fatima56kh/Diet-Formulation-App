import 'package:flutter/material.dart';
import 'package:lacta_diet/screen/consent/colors.dart';
import 'package:lacta_diet/screen/screens/home.dart';

class MyBabyYogurt extends StatelessWidget {
  List icon = ['banana', 'milk', 'honey', 'milkpowder'];
  List value = ['225g', '105g', '1 tsp', '2 tsp'];
   MyBabyYogurt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              expandedHeight: 400,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/yogurt.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(10),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        width: 80,
                        height: 4,
                        color: font,
                      )
                    ],
                  ),
                ),
              ),

              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(250, 250, 250, 0.6),
                  radius: 18,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Home();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: font,
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: _getbody(),
            )
          ],
        ),
      ),
    );
  }

  Widget _getbody() {
    return Wrap(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/protien.png'),
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/carbs.png'),
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/fats.png'),
                  ),
                  Container(
                    width: 33,
                    height: 33,
                    child: Image.asset('images/calories.png'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '10g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '3.6g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '0.4g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '59 Kcal',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'ingredients',
                      style: TextStyle(
                        fontSize: 20,
                        color: font,
                        fontFamily: 'ro',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      ...List.generate(
                        4,
                            (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Container(
                            width: 90,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 1),
                                    color: Colors.grey,
                                    blurRadius: 7,
                                  )
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset('images/${icon[index]}.png'),
                                  Text(
                                    value[index],
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: font,
                                      fontFamily: 'ro',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(
                      'Yogurt with Tropical Fruits',
                      style: TextStyle(
                        fontSize: 20,
                        color: font,
                        fontFamily: 'ro',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  "Preparation\n\nCut the pineapple into fine dice.\nRepeat this process with the peaches.\nPlace a layer of the peaches on the bottom of a serving dish and then add a layer of yogurt.\nTop with a layer of pineapple.\n Benefits\n\nYOGURT \n\n\nYogurt's nutritional profile boasts important nutrients for babies such as calcium and phosphorus for bone strength, as well as protein and fat for babies' rapid growth. Many yogurts are also fortified with vitamin D, which is important for many babies, particularly those who are partially or fully breastfed\nPEACH\n\nPeaches contain antioxidants, most known for beta-carotene which gives peaches their red, orange and yellow colors and protects the body from cell damage. Peaches contain vitamin C as well, which not only acts as an antioxidant but also helps to support immune health.\nPINEAPPLE\n\nPineapple is a good source of carbohydrates, vitamins B6 and C, folate, and fiber, as well as trace amounts of a variety of other vitamins and minerals. Together, these nutrients help support baby's energy,metabolism, iron absorption, neurodevelopment, digestive health, and immune function.",
                  style: TextStyle(
                    fontSize: 18,
                    color: font,
                    fontFamily: 'ro',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );

  }
}
