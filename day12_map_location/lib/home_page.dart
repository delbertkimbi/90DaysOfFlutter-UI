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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(width: 5),
            const Text(
              'Search',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Divider(),
            Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ).copyWith(top: 5),
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 5),
                    Icon(
                      Icons.search,
                      color: Color(0xff545F71),
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Chariot hotel, Buea',
                      style: TextStyle(fontSize: 13, color: Color(0xff545F71)),
                    ),
                  ],
                )),
            const SizedBox(height: 5),
            SizedBox(
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 5,
                spacing: 5,
                children: [
                  Image.asset(
                    'images/k.png',
                    height: 25,
                  ),
                  items(text: 'Price'),
                  items(text: 'Food'),
                  items(text: 'Attractions'),
                  items(text: 'Rating'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Image.asset(
                  'images/map.png',
                ),
                Positioned(
                    child: Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.45),
                  ),
                )),
                Positioned(
                    top: 40,
                    right: 20,
                    child: Image.asset(
                      'images/c.png',
                      height: 40,
                    )),
                Positioned(
                    top: 150,
                    left: 50,
                    child: Image.asset(
                      'images/card.png',
                      height: 250,
                    ))
              ],
            ),
            // Spacer(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  rowItems(
                    false,
                    text: 'Home',
                    icon: Icons.home_outlined,
                  ),
                  rowItems(
                    true,
                    text: 'Explore',
                    icon: Icons.search,
                  ),
                  rowItems(
                    false,
                    text: 'Plan',
                    icon: Icons.favorite_border,
                  ),
                  rowItems(
                    false,
                    text: 'More',
                    icon: Icons.settings_outlined,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column rowItems(bool active, {required String text, required IconData icon}) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20,
          color: active ? Colors.green : Colors.black,
        ),
        Text(
          text,
          style: TextStyle(
            color: active ? Colors.green : Colors.black,
            fontSize: 10,
            fontWeight: active ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }

  Container items({required String text}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: FittedBox(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
