import 'package:ecom_app_clothes/utills/global.dart';
import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  const cartpage({super.key});

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    productAddList.length,
                    (index) => ProductAdd(
                        width: width,
                        height: height,
                        index: index,
                        temp: productAddList),
                  ),
              
                ],
              
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
             child: GestureDetector(onTap:(){
                  Navigator.of(context).pushReplacementNamed('/total');
                } ,
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xff8E8F6F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      'Cheak Out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

            ),
          )
        ],
      ),
    );
  }

  Container ProductAdd(
      {required double height,
      required double width,
      required int index,
      required List temp}) {
    return Container(
      height: height / 6,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2, spreadRadius: 2)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: double.infinity,
                  width: width / 3.5,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(temp[index]['img']),
                        fit: BoxFit.fitHeight),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            temp[index]['name'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                          Text(
                            '\$${temp[index]['price']}/-',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      productAddList.removeAt(index);
                    });
                  },
                  icon: const Icon(Icons.delete)),
            )
          ],
        ),
      ),
    );
  }
}
