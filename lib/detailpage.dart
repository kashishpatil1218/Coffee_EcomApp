import 'package:ecom_app_clothes/utills/global.dart';
import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  const detailpage({super.key});

  @override
  State<detailpage> createState() => _State();
}

class _State extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          empty['name'],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 12,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: height / 2.3,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(empty['img']),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: height / 2.3,
                            width: double.infinity,
                            decoration: const BoxDecoration(color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  empty['description'],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      alignment: Alignment.center,
                                      height: height / 18,
                                      width: width / 2.9,
                                      decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.black12,
                                              spreadRadius: 2,
                                              blurRadius: 2)
                                        ],
                                        color: Color(0xffBDBEAF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "\$${empty['price']}/-",
                                        style:  const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 10),
                                      child: Text(empty['View']),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Text(
                                    'Volum Pack',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: List.generate(
                                      volumList.length,
                                      (index) => volum(
                                          height, width, volumList, index),
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
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(onTap: (){
                productAddList.add(empty);
                Navigator.of(context).pushReplacementNamed('/cart');
                for(int i=0;i<productAddList.length;i++)
                  {
                    showPrice=showPrice+productAddList[i]['price'];
                  }
                showPrice= (showPrice * 18) / 100;


              },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff8E8F6F),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    '👜Add to cart',
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

  Widget volum(double height, double width, List volum, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        alignment: Alignment.center,
        height: height / 17,
        width: width / 4.2,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          volum[index]['volum'],
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ),
    );
  }
}
