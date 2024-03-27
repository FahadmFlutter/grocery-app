import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Number.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/decimg.png",),
            Padding(
              padding:  EdgeInsets.all(30.0.h),
              child: Text(
                'Get your groceries\nwith nectar',
                style: TextStyle(
                  color: Color(0xFF030303),
                  fontSize: 26.sp,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Number()));
              },
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding:   EdgeInsets.symmetric(horizontal: 30.w),
                      child: Container(
                        height: 30.h,width: 50.w,
                        decoration: BoxDecoration(
                          color: Colors.green,borderRadius: BorderRadius.circular(5.r)
                        ),child: CircleAvatar(radius: 10.r,backgroundColor: Colors.red,),
                      ),
                    ),
                    Text(
                      '+880',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF030303),
                        fontSize: 18.sp,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0.09,
                      ),
                    )
                  ],

                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.w),
              child: Divider(),
            ),
            Center(
              child: Text(
                'Or connect with social media',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF828282),
                  fontSize: 14.sp,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(20.0.h),
              child: Center(
                child: Container(
                  width: 300.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF5383EC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 22.w,
                        height: 24.h,
                        child: Image.asset("assets/google.png"),
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Color(0xFFFCFCFC),
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(10.0.h),
              child: Center(
                child: Container(
                  width: 300.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A66AC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 22.w,
                        height: 24.h,
                        child: Image.asset("assets/facebook.png"),
                      ),
                      Text(
                        'Continue with Google',
                        style: TextStyle(
                          color: Color(0xFFFCFCFC),
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }
}
