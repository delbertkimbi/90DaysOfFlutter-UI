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
      backgroundColor: const Color(0xff21252F),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
         const    SizedBox(height: 20,),
         const    Row(
              children: [

              Icon(Icons.arrow_back, color: Colors.white, size: 30,
              ),
                SizedBox(width: 20,),
              Text('Pick your country code',
                style: TextStyle(color: Colors.white,

                  fontSize: 25, fontWeight: FontWeight.w500,),)
            ],),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              decoration: BoxDecoration(
                color: Color(0xff394461),
                borderRadius: BorderRadius.circular(10),
              ),
              child:const  Row(children: [
                Icon(Icons.search, color: Colors.grey,size: 30,),
                SizedBox(width: 10,),
                Text('Type your country name',style:
                TextStyle(color: Colors.grey,
                  fontSize: 18,),),
              ],),
            ),
          const   SizedBox(height: 20,),
          const   Text('Based on your location',style:
          const  TextStyle(color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 14,),),
            const SizedBox(height: 10,),
            Image.asset('images/bar.png'),
           const SizedBox(height: 20,),
          const   Text('Alphabetical',style:
            TextStyle(color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: 14,),),
          const  SizedBox(height: 10,),
            Image.asset('images/others.png')
          ],
        ),
      ),
    );
  }
}
