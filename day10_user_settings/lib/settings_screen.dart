import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/back.png',
                  height: 25,
                ),
                const SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: const Color(0xffECF4FC),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/person.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NYANDO ONONGWENE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        )),
                    Text('+237674208573',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                _rowItem(icon: CupertinoIcons.home, name: 'Home'),
                _rowItem(icon: CupertinoIcons.person, name: 'Profile'),
                _rowItem(
                    icon: CupertinoIcons.person_2_square_stack_fill,
                    name: 'My Posts'),
                _rowItem(
                    icon: CupertinoIcons.news_solid, name: 'news and Updates'),
                _rowItem(
                    icon: CupertinoIcons.person_3_fill, name: 'Communities'),
                _rowItem(icon: CupertinoIcons.person_3, name: 'Family Plan'),
                _rowItem(
                    icon: Icons.volunteer_activism_rounded,
                    name: 'Become a Volunteer'),
                const Row(
                  children: [
                    Icon(
                      Icons.stars,
                      size: 18,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Badges',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                _rowItem(icon: Icons.language, name: 'Change Language'),
                _rowItem(icon: Icons.dark_mode, name: 'Dark Mode'),
                _rowItem(icon: Icons.text_fields_sharp, name: 'Text Size'),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              border: Border.all(color: Colors.grey),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _bottomItem(icon: CupertinoIcons.home, name: 'Home'),
                _bottomItem(icon: Icons.security_outlined, name: 'Prepare'),
                _bottomItem(icon: CupertinoIcons.map, name: 'Map'),
                _bottomItem(icon: Icons.settings, name: 'Settings'),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _rowItem({required IconData icon, required String name}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Padding _bottomItem({required IconData icon, required String name}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 16,
            color: Colors.black,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
