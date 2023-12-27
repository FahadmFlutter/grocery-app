import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/signUp.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(30.0.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Padding(
              padding:  EdgeInsets.all(50.0.h),
              child: Image.asset('assets/carrotColor.png',height: 55.h,width: 47.w,),
            )),
            Text(
              'Loging',
              style: TextStyle(
                color: Color(0xFF030303),
                fontSize: 26.sp,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Enter your emails and password',
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 16.sp,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(top: 40.h),
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
            TextFormField(),
            Padding(
              padding:  EdgeInsets.only(top: 20),
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
            Padding(
              padding:  EdgeInsets.all(20.h),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 14.sp,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.70,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SignUp()));
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
                    'Log In',
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
              padding:  EdgeInsets.all(20.0.h),
              child: Center(
                child: SizedBox(
                  width: 241.02.w,
                  height: 50.h,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t have an account? ',
                          style: TextStyle(
                            color: Color(0xFF030303),
                            fontSize: 14.sp,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.70,
                          ),
                        ),
                        TextSpan(
                          text: 'Sing In',
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
    );
  }
}
