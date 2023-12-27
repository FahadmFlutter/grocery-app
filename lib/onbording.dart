import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/signIn.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/man.png",fit: BoxFit.cover,
              ),
              Positioned(
                top: 350.h,
                child: Container(
                  height: 350.h,
                  child: Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/carrot.png",height: 55.h,width: 50.w,),
                        Text(
                          'Welcome \nto our store',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 48.sp,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Ger your groceries in as fast as one hour',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xB2FCFCFC),
                            fontSize: 16.sp,
                            fontFamily: 'Gilroy-Medium',
                            fontWeight: FontWeight.w400,
                            height: 0.06,
                          ),
                        ),

                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SignIn()));
                          },
                          child: Padding(
                            padding:  EdgeInsets.all(30.0.w),
                            child: Container(
                              width: 290.w,
                              height: 60.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFF53B175),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19.r),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Get Started',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFFF9FF),
                                    fontSize: 18.sp,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
