import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.04, vertical: height * 0.36),
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.center,
          fit: BoxFit.cover,
          image: AssetImage('assets/bg.png'),
        )),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
              vertical: height * 0.02,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    SizedBox(width: width * 0.2),
                    const Text(
                      'Leave this page',
                      style: TextStyle(
                        color: Color(0xff800080),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: width * 0.15),
                    const Icon(
                      CupertinoIcons.xmark,
                      size: 28,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.018),
                const Text(
                  'Do you want to cancel what you are doing and leave this page? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: height * 0.055),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height * 0.055,
                      width: width * 0.38,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(color: const Color(0xff800080)),
                      ),
                      child: const Text(
                        'No',
                        style: TextStyle(
                          color: Color(0xff800080),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.055,
                      width: width * 0.38,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff800080),
                      ),
                      child: const Text(
                        'Yes, Leave Page',
                        style: TextStyle(
                          color: Color(0xffE8D4E8),
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
