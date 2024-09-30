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
      backgroundColor: Colors.transparent,
      body:Stack(
        children: [
          Image.asset('assets/bg.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: 70,
              left: 20,
              right: 30,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Midjourney',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20,
                      fontWeight: FontWeight.w600,)
                    ,),
                  Image.asset('assets/vec.png')
            
          ],)),
          Positioned(
            top: 120,
              left: 20,
              child: Text('Community\nShowcase',
            style: TextStyle(color: Colors.white,
              height: 1,
              fontWeight: FontWeight.bold,

            fontSize: 30,),)),
          Positioned(
            top: 230,
              left: 20,
              right: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  height: 400,
                  child: CarouselView(
                      itemExtent: MediaQuery.of(context).size.width-100,
                      elevation: 10,
                      backgroundColor: Colors.transparent,
                      scrollDirection: Axis.horizontal,
                      children:[
                    Image.asset('assets/c1.png', height: 400,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                    Image.asset('assets/c2.png', height: 400,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                        Image.asset('assets/c3.png', height: 400,
                          width: 300,
                          fit: BoxFit.cover,
                        ),
                  ])
                          ),
              )),
          Positioned(
            bottom: 100,
            left: 50,
            right: 50,
            child: Image.asset('assets/b2.png'),),
          Positioned(
            bottom: 20,
              left: 10,
              right: 10,
              child: Image.asset('assets/bn.png')),
        ],
      )
    );
  }
}
