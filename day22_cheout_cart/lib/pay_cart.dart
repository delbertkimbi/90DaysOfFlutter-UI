import 'package:flutter/material.dart';

class Paycard extends StatefulWidget {
  const Paycard({super.key});

  @override
  State<Paycard> createState() => _PaycardState();
}

class _PaycardState extends State<Paycard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1A2530),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff161F28),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const Text(
                      'Checkout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Image.asset('assets/bag.png'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff161F28),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Contact Information',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _rowItem(
                        name: 'delbertdrums5@gmail.com        ',
                        title: 'Email',
                        image: 'assets/bag.png',
                        im: 'assets/i.png',
                      ),
                      _rowItem(
                        name: '+237674208573                                  ',
                        title: 'Phone',
                        image: 'assets/call.png',
                        im: 'assets/i.png',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Newahall St 36, London, 12908 - UK',
                            style: const TextStyle(
                              color: Color(0xff707B81),
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff707B81),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/map.png'),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Payment Menthod',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _rowItem(
                        name: 'Paypal card                                   ',
                        title: '**** **** 0696 4629   ',
                        image: 'assets/pay.png',
                        im: 'assets/i.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Color(0xff161F28),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                textItem(
                  amount: '\$2104,54',
                  name: 'Subtotal',
                ),
                const SizedBox(
                  height: 10,
                ),
                textItem(
                  amount: '\$2104,54',
                  name: 'Shipping',
                ),
                const SizedBox(
                  height: 35,
                ),
                textItem(
                  amount: '\$2104,54',
                  name: 'Total',
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 45,
                  width: 300,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: const Color(0xff5B9EE1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    'Confirm Payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding textItem({required String amount, required String name}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey)),
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row _rowItem(
      {required String name,
      required String title,
      required String image,
      required String im}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(image),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xff707B81),
                fontSize: 12,
              ),
            ),
          ],
        ),
        Expanded(child: Image.asset(im)),
      ],
    );
  }
}
