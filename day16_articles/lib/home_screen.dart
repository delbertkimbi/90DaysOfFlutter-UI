import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,

        title: const Text('Articles',style:
        TextStyle(fontWeight: FontWeight.w600, fontSize: 16,),),
        leading: Image.asset('assets/li.png'),
        actions: [
          Image.asset('assets/dot.png'),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(),
         const  SizedBox(height: 10,),
         const  Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.volume_up,
              ),
              SizedBox(width: 7,),
              Icon(
                Icons.format_align_center_rounded,
              ),
              SizedBox(width: 7,),
              Text(
                'Filer',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 15,),
            ],
          ),
         const  SizedBox(height: 5,),
          Expanded(
            child: ListView(
              children: [
                _articleCard(
                  head: 'Fire Accident in Molyko, Buea',
                  image: 'assets/fire.png'
                ),
                const SizedBox(
                  height: 30,
                ),
                _articleCard(head:'Mt Cameroon eruption',
                    image: 'assets/mt.png',
                ),
                const SizedBox(
                  height: 30,
                ),
                _articleCard(
                    head: 'Fire Accident in Molyko, Buea',
                    image: 'assets/fire.png'
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _articleCard({required String image, required String head}) {
    return Container(

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          const  SizedBox(
            height: 310,
            width: double.infinity,
          ),

          Positioned(child:
          Image.asset(
           image,
            width: double.infinity,
          ),),
          Positioned(
            bottom: 0,
            right: 10,
            left: 11.2,
            child: Card(
              elevation: 10,
               color: Colors.white,
            //  shadowColor: Colors.white,
borderOnForeground: true,
              child: Container(
            padding: const EdgeInsets.all(10),
               decoration: BoxDecoration(
                  color: Colors.white,
               borderRadius: BorderRadius.circular(20)
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(head,
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),

                        Text('20 May 2024',
                          style: TextStyle(fontSize: 12,
                              fontWeight: FontWeight.w500),),
                      ],
                    ),
                    const SizedBox(height: 5,),
                    const Text(
                      'The heavy rainfall overwhelmed the drainage\n systems,leading to widespread waterlogging.\n disrupted daily activities, causing road closures \n and  The floodwaters disrupted daily..',

                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 7,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  Row(
                          children: [
                            Icon(
                              CupertinoIcons.chat_bubble_text_fill,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '8 Comments',
                              style: TextStyle(
                                fontSize: 10,
                               fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 7,),
                            Icon(
                              Icons.favorite_border_outlined,
                            ),
                            SizedBox(width: 3,),
                            Text(
                              '2 likes',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,

                                fontSize: 10,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Text(
                            'Read more >>',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
