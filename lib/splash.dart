import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'onbording.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
 @override
  void initState() {
   Future.delayed( Duration(seconds: 3),(){
     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>  Onbording()));
   });
    // TODO: implement initState

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff53B175),
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
                    'online groceriet',
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
