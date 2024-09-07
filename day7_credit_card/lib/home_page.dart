import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Positioned(
            top: height * 0.3,
            left: width * 0.05,
            right: width * 0.05,
            child: Container(
                width: width * 1,
                height: height * 0.26,
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.055,
                  vertical: width * 0.05,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                        colors: [Color(0xff4A4A49), Color(0xff20201F)])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Maglo.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Color(0xff626260),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Universal Bank',
                          style: TextStyle(
                            color: Color(0xff626260),
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.028,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/group.png',
                          height: height * 0.04,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.03),
                          child: Image.asset(
                            'assets/wifi.png',
                            height: height * 0.04,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    const Text(
                      '5495  7381  3759  2321',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '04/24',
                          style: TextStyle(
                            color: Color(0xff868685),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image.asset(
                          'assets/mastercard.png',
                          height: height * 0.045,
                        )
                      ],
                    ),
                  ],
                )),
          ),
          Positioned(
            top: height * 0.51,
            left: width * 0.1,
            right: width * 0.1,
            child: Container(
                height: height * 0.212,
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.05,
                  vertical: width * 0.05,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.4)
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Maglo.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' | ',
                          style: TextStyle(
                            color: Color(0xffF5F5F5),
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          'Commercial Bank',
                          style: TextStyle(
                            color: Color(0xffF5F5F5),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.013,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/group.png',
                          height: height * 0.032,
                        ),
                        Image.asset(
                          'assets/wifi.png',
                          height: height * 0.04,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.026,
                    ),
                    const Text(
                      '85952548****',
                      style: TextStyle(
                        color: Color(0xff1B212D),
                        fontSize: 15,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.002,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '09/25',
                          style: TextStyle(
                            color: Color(0xff929EAE),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Image.asset(
                          'assets/visa.png',
                          height: height * 0.03,
                        )
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
