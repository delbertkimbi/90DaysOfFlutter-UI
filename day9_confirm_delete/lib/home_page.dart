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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
          alignment: Alignment.center,
          image: AssetImage('assets/bg.png'),
        )),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('assets/cancel.png'),
                  ],
                ),
                Center(
                  child: Image.asset('assets/warning.png'),
                ),
                SizedBox(height: 20),
                Text(
                  'Are you sure you want to delete this file?',
                  style: TextStyle(fontSize: 20),
                ),
                 SizedBox(height: 20),
                Text('If yes click on confirm, all yout data will be gone'),
                 SizedBox(height: 30),
                 Row()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
