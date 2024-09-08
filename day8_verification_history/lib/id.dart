import 'package:flutter/material.dart';

class VerifyOptionPage extends StatefulWidget {
  const VerifyOptionPage({super.key});

  @override
  State<VerifyOptionPage> createState() => _VerifyOptionPageState();
}

class _VerifyOptionPageState extends State<VerifyOptionPage> {
  final TextStyle _headertext = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  final TextStyle _minorText = const TextStyle(
    color: Color(0xff94a4ab),
    fontWeight: FontWeight.normal,
    fontSize: 13,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('assets/help.png'),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Verification',
            style: _headertext,
          ),
          Text(
            'Fill in ID Card Information',
            style:
                _minorText.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 15,
          ),
          _item(
              title: 'Fill in ID Card Information',
              subTitle: 'Name, ID card number'),
          _item(
              title: 'Front of ID card',
              subTitle: 'picture of front side of the ID card'),
          _item(
              title: 'Back of ID card',
              subTitle: 'picture of back side side of the ID card'),
          const Spacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don\'t have an ID Card? ',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Try another methid',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff23ca3e),
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }

  Widget _item({required String title, required String subTitle}) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20)
          .copyWith(bottom: 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        border: Border.all(
          color: const Color(0xffbfc6cc),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: _headertext,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                subTitle,
                style: _minorText,
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
