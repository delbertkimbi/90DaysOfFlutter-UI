import 'package:day1_product_card/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          'Pruduct Cards',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.cartBackgroundColor,
        onPressed: () {},
        child: const Icon(CupertinoIcons.add),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    height: 307,
                    width: 250,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: AppColors.cartBackgroundColor,
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                        height: 300,
                        width: 250,
                        decoration: BoxDecoration(
                            color: AppColors.cartForgroundColor,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black38))),
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            'assets/pic2.png',
                            fit: BoxFit.fill,
                            height: 150,
                            width: 250,
                          )),
                      const Positioned(
                        right: 10,
                        top: 10,
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.backgroundColor,
                        ),
                      )
                    ],
                  ),
                  const Positioned(
                    bottom: 120,
                    right: 60,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Air Jordan 1 Low',
                            style: TextStyle(
                              color: AppColors.backgroundColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                          Text(
                            '\$110',
                            style: TextStyle(
                              color: AppColors.backgroundColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 80,
                    right: 10,
                    child: SizedBox(
                      width: 216,
                      child: Text(
                        'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that\'s...',
                        style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 27,
                    right: 25,
                    child: Container(
                      height: 45,
                      padding: const EdgeInsets.all(0),
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black38),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 40,
                        width: 200,
                        // margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/okay.png',
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 45),
                            const Center(
                                child: Text('Add to Cart',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
