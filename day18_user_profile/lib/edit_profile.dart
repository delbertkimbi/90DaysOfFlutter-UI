import 'package:day18_user_profile/save_changes.dart';
import 'package:flutter/material.dart';
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
            width: MediaQuery.of(context).size.width,
                    color:const  Color(0xff240038),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    width: MediaQuery.of(context).size.width,

                  ),
                ),


              ],
            ),
          ),
          Positioned(
            top: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Icon(Icons.arrow_back, color: Colors.white,size: 30,),
                SizedBox(width: 125,),
                Text('Profile',style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, fontWeight: FontWeight.w600,),),
              ],),
          ),
          Positioned(
            top: 90,
              left: 0,
              right: 0,
              child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                      child: Image.asset('images/dels.jpg',
                        height: 130, width: 130 ,
                        fit: BoxFit.cover,
                      ),
                  ),
                ),
                const Text('Change Picture')
              ],
            ),
          )),
          Positioned(
            left: 30,
            right: 30,
            top: 280,
            child: Column(
              children: [
                item(name: 'NYUH DELBERT KIMBI', title: 'Full name'),
                item(name: 'delbertkimbi237@gmail.com', title: 'Email address'),
                item(name: '+237677040693', title: 'Phone Number'),
                item(name: '*********', title: 'Password'),
             const  SizedBox(height: 50,),
            GestureDetector(
              onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SaveChanges())),
              child: Container(
                height: 50,
                width: double.infinity,

                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color:Colors.black,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Text('Edit Profile',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),
              ),
            ),
              ],
            ),
          ),

        ],
      ),
    );
  }
  Widget item({required String name, required String title}){
    return   Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
       const  SizedBox(height: 10,),
        Container(
          height: 50,
          width: double.infinity,
          padding:const  EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              border: Border.all(color:const Color(0xff9BA5B7),),
              color: const Color(0xffEEF1F4),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Text(name,style: TextStyle(color:
          Color(0xff9BA5B7),),),
        ),
        SizedBox(height: 10,),
      ],
    );
  }

}