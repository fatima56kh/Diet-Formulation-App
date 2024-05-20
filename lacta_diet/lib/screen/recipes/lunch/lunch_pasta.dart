import 'package:flutter/material.dart';
import 'package:lacta_diet/screen/consent/colors.dart';
import 'package:lacta_diet/screen/screens/home.dart';


// ignore: must_be_immutable
class Pasta_burger extends StatelessWidget {
  Pasta_burger({super.key});
  List icon = ['dough-rolling', 'cheese', 'meat', 'sausage'];
  List value = ['250g', '120g', '100g', '50g'];

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
                  'images/lunch2.jpg',
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
                    '8.1g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '1.3g',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'ro',
                    ),
                  ),
                  Text(
                    '221 Kcal',
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
                      'Major ingredients',
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
                      'Pasta',
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
                  "Other Ingredients\n\n12 oz (340g) spaghetti\n1/2 cup extra virgin olive oil\n6 large garlic cloves, thinly sliced\n1/4 teaspoon red pepper flakes (adjust to taste\nSalt, to taste\nFreshly ground black pepper, to taste\n1/4 cup chopped fresh parsley\n1/2 cup grated Parmesan cheese (optional)\nLemon zest from 1 lemon (optional, for a fresh twist)\n\nPreparation\n\nTo prepare a delicious Spaghetti Elbow, start by bringing a large pot of salted water to a boil and cooking 12 ounces of spaghetti according to package instructions until al dente. Reserve 1 cup of the pasta cooking water, then drain the pasta. While the pasta cooks, heat 1/2 cup of extra virgin olive oil in a large skillet over medium heat, then add 6 large thinly sliced garlic cloves and sauté until golden brown and fragrant, about 2-3 minutes, being careful not to burn the garlic. Add 1/4 teaspoon of red pepper flakes and cook for another 30 seconds. Next, add the drained spaghetti to the skillet, tossing to coat the pasta evenly with the oil and garlic mixture. If the pasta seems dry, gradually add the reserved pasta water until the desired consistency is reached. Season with salt and freshly ground black pepper to taste, then add 1/4 cup of chopped fresh parsley and toss to combine. If desired, sprinkle with 1/2 cup of grated Parmesan cheese and the zest of one lemon for extra flavor. Serve immediately, garnished with extra parsley and Parmesan if desired, and enjoy your flavorful homemade pasta dish.",
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
