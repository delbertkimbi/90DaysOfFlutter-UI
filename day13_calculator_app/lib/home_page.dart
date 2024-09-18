import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> items = [
    'C',
    '+/-',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '.',
    '0',
    'x',
    '='
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.surface,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  width: 60,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                    color: theme.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.light_mode,
                        color: theme.secondary,
                      ),
                      Icon(
                        Icons.circle,
                        color: theme.onSecondary,
                      )
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              '6,291/5',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text('1,258.2',
                style: TextStyle(
                  fontSize: 50,
                  letterSpacing: 2,
                  fontWeight: FontWeight.normal,
                  color: theme.onPrimary,
                )),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              flex: 3,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  if (index <= 2) {
                    return box(
                        text: items[index],
                        textColor: theme.onPrimary,
                        mainColor: const Color(0xffD2D3DA));
                  } else if (index == 3 ||
                      index == 7 ||
                      index == 11 ||
                      index == 15 ||
                      index == 19) {
                    return box(
                        text: items[index],
                        textColor: Colors.white,
                        mainColor: theme.secondary);
                  } else {
                    return box(
                        text: items[index],
                        textColor: theme.onPrimary,
                        mainColor: theme.primary);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container box(
      {required String text,
      required Color textColor,
      required Color mainColor}) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
