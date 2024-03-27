import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/UI/BottomNavBar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../UI/onbording.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 @override
  void initState() {
    super.initState();
   Future.delayed( const Duration(seconds: 3),()async{
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     if(prefs.containsKey("Token")){
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>  BottomNavBar()));
     }else{
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>  Onbording()));}
   });
    // TODO: implement initState

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff53B175),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/carrot.png",height: 63.h,width: 65.w,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'nectar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 65.sp,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  Text(
                    'online groceries',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      height: 0.09.h,
                      letterSpacing: 5.50,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
