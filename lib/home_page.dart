import 'dart:ui';
import 'dart:core';
import 'package:ecom_app_clothes/utills/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/cart');
                  },
                  icon: const Icon(Icons.add_shopping_cart_outlined))),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Garb your coffee',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                      children: List.generate(
                    optionList.length,
                    (index) => optionContainer(
                      name: optionList[index]['name'],
                    ),
                  )),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(
                      CoffeeList.length,
                      (index) => product(
                        name: CoffeeList[index]['name'],
                        image: CoffeeList[index]['img'],
                      ),
                    )),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                        child: Text(
                          'Popular',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'view more',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        coldCoffeeList.length,
                        (index) => GestureDetector(
                          onTap: () {
                            empty = coldCoffeeList[index];
                            Navigator.of(context).pushNamed('/detail');
                          },
                          child: mainContainer(
                            height,
                            width,
                            image: coldCoffeeList[index]['img'],
                            name: coldCoffeeList[index]['name'],
                            price: coldCoffeeList[index]['price'] as int,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        hotCoffeeList.length,
                        (index) => GestureDetector(
                          onTap: () {
                            empty = hotCoffeeList[index];
                            Navigator.of(context).pushNamed('/detail');
                          },
                          child: mainContainer(
                            height,
                            width,
                            image: hotCoffeeList[index]['img'],
                            name: hotCoffeeList[index]['name'],
                            price: hotCoffeeList[index]['price'] as int,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                    child: Text(
                      'Others',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        otherList.length,
                        (index) => GestureDetector(
                          onTap: () {
                            empty = otherList[index];
                            Navigator.of(context).pushNamed('/detail');
                          },
                          child: mainContainer(
                            height,
                            width,
                            image: otherList[index]['img'],
                            name: otherList[index]['name'],
                            price: otherList[index]['price'] as int,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height / 10,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff8E8F6F),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.person_2_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget mainContainer(double height, double width,
      {required String image, required String name, required int price}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: height / 3.4,
        width: width / 2.2,
        decoration: BoxDecoration(
          color: const Color(0xff8F8F6D),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Container(
              height: height / 4.5,
              width: width / 2.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(image))),
            ),
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Text(
                '\$ ${price}',
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column product({required String name, required String image}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          name,
          style: const TextStyle(color: Colors.black, fontSize: 13),
        )
      ],
    );
  }

  Padding optionContainer({required String name}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Container(
        height: 45,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          name,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
