import 'package:day15_ecommerce_shoe_app/constants.dart';
import 'package:day15_ecommerce_shoe_app/pages/cart_screen.dart';
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
      backgroundColor:const Color(0xff1A2530),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CartScreen())),
                    child: Image.asset('assets/appbar.png')),
                const SizedBox(height: 20,),
                Image.asset('assets/search.png'),
               const  SizedBox(height: 20,),
                Image.asset('assets/cat.png'),
const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Popular shoes',style:_titleStyle ),
                    Text('see all',style:_lableStyle),

                ],),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      _card(name: 'Nike Jordan', title: 'BEST seller', image: 'assets/s2.png' , value: '\$493.00'),
                      _card(name: 'Nike Air Max', title: 'BEST seller', image: 'assets/s1.png' , value: '\$897.99'
                          ''),
                  ],
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New Arrivals',style:_titleStyle ),
                    Text('see all',style:_lableStyle),

                  ],),
                SizedBox(height: 20,),
                Container(
                 // width: 163,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color:const  Color(0xff161F28),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('BEST choise'.toUpperCase(),style: _lableStyle,),
                        Text('Nike Air Jordan' ,style: _titleStyle,),
                        SizedBox(height: 5,),
                        Text('\$897.99',style: _titleStyle.copyWith(fontSize: 14),),

                      ],),
                      SizedBox(width: 16,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:  8.0).copyWith(right: 14),
                        child: Image.asset('assets/s3.png'),
                      ),

                    ],),),

              ],
            ),
          ),

          Image.asset('assets/bottom.png', width: double.infinity,)
        ],
      ),
    );
  }
  final TextStyle _titleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.w600,
  );
  final TextStyle _lableStyle= const TextStyle(
    color: Color(0xff5B9EE1),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
  Container _card({ required String name, required String title, required String image, required String value}){
    return   Container(
      width: 163,
      padding: const EdgeInsets.only(left: 15, top: 10),
      decoration: BoxDecoration(
        color:const  Color(0xff161F28),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:  8.0).copyWith(right: 14),
            child: Image.asset(image),
          ),
          Text(title.toUpperCase(),style: _lableStyle,),
          Text(name ,style: _titleStyle,),
          SizedBox(height: 3,),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text(value,style: _titleStyle.copyWith(fontSize: 14),),

              SizedBox(width: 57,),
              Image.asset('assets/add.png',height: 34,)
            ],)
        ],),);
  }
}