import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BottomNavBar.dart';
import 'package:nectar/Home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(30.0.w),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Padding(
                padding:  EdgeInsets.all(50.0.h),
                child: Image.asset('assets/carrotColor.png',height: 55.  h,width: 47.w,),
              )),
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Color(0xFF030303),
                  fontSize: 26.sp,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Enter your credentials to continue',
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16.sp,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Text(
                  'Username',
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextFormField(),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  'Email',
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      width: 270.w,
                      child: TextFormField()),
                  Icon(Icons.check,color: Colors.green,)
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20.h),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      width: 270.w,
                      child: TextFormField()),
                  Icon(Icons.visibility_off,color: Colors.grey,)
                ],
              ),
              SizedBox(
                width: 358.62.w,
                height: 60.h,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'By continuing you agree to our',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 14,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms of Service ',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      TextSpan(
                        text: 'and',
                        style: TextStyle(
                          color: Color(0xFF7C7C7C),
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> BottomNavBar()));
                },
                child: Container(
                  width: 364.w,
                  height: 60.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
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
              Padding(
                padding:  EdgeInsets.all(8.0.w),
                child: Center(
                  child: SizedBox(
                    width: 241.02.w,
                    height: 50.h,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(
                              color: Color(0xFF030303),
                              fontSize: 14.sp,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.70,
                            ),
                          ),
                          TextSpan(
                            text: 'Singup',
                            style: TextStyle(
                              color: Color(0xFF53B175),
                              fontSize: 14.sp,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
