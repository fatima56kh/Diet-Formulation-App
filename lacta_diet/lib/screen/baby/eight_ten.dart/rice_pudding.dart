import 'package:flutter/material.dart';
import 'package:lacta_diet/screen/consent/colors.dart';
import 'package:lacta_diet/screen/screens/home.dart';

class MyRicePudding extends StatelessWidget {
  List icon = ['banana', 'milk', 'honey', 'milkpowder'];
  List value = ['225g', '105g', '1 tsp', '2 tsp'];
   MyRicePudding({super.key});

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
                  'images/baby_bb.jpg',
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
                    '1.7g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '2g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '3g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '140 Kcal',
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
                      'Rice Pudding',
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
                  "Preparation\n1.	Rinse ¼ cup basmati rice a couple of times till the water runs clear of the starch.\n2.	Then soak the rice in enough water for 15 to 20 minutes.\n3.	Heat water in a small pan or pot. When the water comes to a boil then switch off the flame and then add 10 to 12 almonds to it.\n 4.	Cover and keep aside for 30 minutes. Then peel and slice almonds. This is an optional step.\n 5.	Meanwhile, when the rice grains are soaking, take whole or full fat milk in a heavy wide pan or saucepan.\n 6.	Keep the pan on a low to medium-low heat. Stir at intervals so that the milk does not stick at the bottom of the pan.\n7.	Let the milk come to a boil.\n 8.	Take 1 tablespoon milk from the pan in a small bowl. Let the milk become warm. Then add a few saffron strands in the milk. Keep aside.\n 9.	After the milk begins to boil, drain all the water from the rice and add it to the hot boiling milk. mix very well.\n10.	Simmer and cook rice on a low heat. No need to cover the pan when the rice is cooking.\n11.	Cook the rice grains till they are 50% done or half-cooked.\n12.	Then add sugar. You can add more or less sugar according to your preferences. Mix the sugar in the milk with a spoon.\n13.	Continue to cook rice on a low to medium-low heat. Do stir at intervals. Simmer till the rice is almost cooked.\n14.	Then add ½ teaspoon green cardamom powder. Add blanched and peeled sliced almonds and chopped cashews and sliced pistachios. Mix well.\n 15.	Then add the saffron infused milk.\n16.	Again mix and continue to cook on a low flame till the rice kheer thickens and the rice grains have completely cooked.\n 17.	Switch off the heat when the rice grains are completely cooked. The kheer will also thicken. On cooling rice kheer thickens more. Scrape milk solids from sides and add to kheer.\n 18.	Lastly add 1 tablespoon golden raisins. At this step you can add 1 tablespoons rose water or kewra water to the kheer.\n 19.	Pour the kheer in individual serving bowl. You can serve the rice kheer, hot or warm or chilled. Refrigerate leftover rice kheer in a closed container and eat it in 1 to 2 says.\n 20.	You can enjoy it cold or warm it before serving. If the kheer has become very thick then add a splash of milk and reheat it until warm.\n\nNutritional Values:\n\nFat 3g					5%\nSaturated Fat 1g			6%\n Cholesterol 1mg			0%\n Sodium 2mg				0%\n Potassium 90mg			3%\n  Carbohydrates 26g			9%\n  Fiber 1g				4%\n  Sugar 17g				19%\n   Protein 2g				4%\n  Vitamin B1 (Thiamine) 1mg		67%\nVitamin B2 (Riboflavin) 1mg	59%\n Vitamin B3 (Niacin) 1mg		5%\n  Vitamin B6 1mg			50%\n Vitamin E 1mg			7%\n  Vitamin K 1µg			1%\n Calcium 11mg			1%\n Vitamin B9 (Folate) 3g		1%\n  Iron 1mg				6%\n  Magnesium 18mg			5%\n  Phosphorus 49mg			5%\n   Zinc 1mg				7%",
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
