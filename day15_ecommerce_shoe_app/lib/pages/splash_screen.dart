import 'package:day15_ecommerce_shoe_app/constants.dart';
import 'package:day15_ecommerce_shoe_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:const Color(0xff1A2530),
      body: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
                child: Image.asset('assets/bar.png', height: 200,)),

           Container(
             height: 300,

             padding:const  EdgeInsets.symmetric(horizontal:  13 ).copyWith(top:
                 0),
             child: Stack(

               children: [ Image.asset('assets/nike.png', height: 200,),

                 Positioned(
                   bottom: -15,
                    left: -20,
                     child: Image.asset('assets/splash_shoe.png',
                      )),
                Positioned(
                  bottom:0 ,
                    left: 7,
                    child: Icon(Icons.circle, size: 16, color: Color(0xff5B9EE1),)),
                 Positioned(
                     bottom:65 ,
                     right: 20,
                     child: Icon(Icons.circle,size: 16, color: Color(0xff5B9EE1),))

               ],
             ),

           ),
const SizedBox(height: 30,),
          const  Padding(
             padding:  EdgeInsets.only(left: 20.0),
             child: Text('Start Journey\nWith Nike',style:
             TextStyle(color: Colors.white, fontSize: 35, letterSpacing: 1, fontWeight: FontWeight.bold,),),
           ),
            const SizedBox(height: 5,),
         const  Padding(
            padding:  EdgeInsets.only(left: 20.0),
            child: Text('Smart, Gorgeous & Fashionable Collection',
              style: TextStyle(color: Color(0xff707B81), fontWeight: FontWeight.w200, fontSize: 20,),),
          ),
           const  SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

             Row(children: [
               Container(
                 width: 45,
                 height: 6,
                 margin: const EdgeInsets.only(right: 10),
                 decoration: BoxDecoration(
                   color: const Color(0xff5B9EE1),
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Container(
                 width: 15,
                 margin: const EdgeInsets.only(right: 7),
                 height: 6,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Container(
                 width: 15,
                 margin:const  EdgeInsets.only(right: 7),
                 height: 6,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
             ],),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                  },
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    decoration: BoxDecoration(
                      color: const Color(0xff5B9EE1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:const  Text('Get Started',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),
                  ),
                )
              ],),
            )
           ],
        ),
      ),
    );
  }
}
