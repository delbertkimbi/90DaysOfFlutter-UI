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
      backgroundColor: Color(0xff104084),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
                const Text(
                  'Fortaleza',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.white,
                ),
                Expanded(
                  child: Image.asset('assets/i.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
