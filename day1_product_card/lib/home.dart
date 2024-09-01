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
                      height: 300,
                      width: 250,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: AppColors.cartForgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      )),
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
                    bottom: 110,
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
                    bottom: 60,
                    right: 10,
                    child: SizedBox(
                      width: 230,
                      child: Text(
                        'Inspired by the original that debuted in 1985, the Air Jordan 1 Low offers a clean, classic look that\'s familiar yet always fresh. ',
                        style: TextStyle(
                            color: AppColors.backgroundColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            height: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 20,
                    child: Container(
                      height: 40,
                      width: 200,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 17,
                          ),
                          SizedBox(width: 45),
                          Center(
                              child: Text('Add to Cart',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  )))
                        ],
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
