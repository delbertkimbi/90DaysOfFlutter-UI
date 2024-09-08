import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final TextStyle _headerText = const TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 20,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/help.png'),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'History',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xffD9E6DB),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text('All', style: _headerText),
              ),
              Text('Recieved', style: _headerText),
              Text('Sent', style: _headerText),
              Text('Rejected', style: _headerText),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          _itemCard(color: Colors.amber, text: 'Pending'),
          const SizedBox(height: 15),
          _itemCard(color: Colors.green.shade300, text: 'Recieved'),
          const SizedBox(height: 15),
          _itemCard(color: Colors.green, text: 'Sent'),
          const SizedBox(height: 15),
          _itemCard(color: Colors.red, text: 'Rejected'),
        ],
      ),
    );
  }

  Container _itemCard({required Color color, required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset('assets/profile_pic.png'),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Timothy Green', style: _headerText),
              const Text(
                '5 May 2023, 6:12am',
                style: TextStyle(
                  color: Color(0xff7F8592),
                  fontSize: 12,
                ),
              )
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.21,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('-1000XAF', style: _headerText),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          )
        ],
      ),
    );
  }
}
