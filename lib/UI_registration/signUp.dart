import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BloC/Sign%20Up/SignUp_bloc.dart';

import 'Login.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 30,),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                    padding: EdgeInsets.all(26.0.h),
                    child: Image.asset(
                      'assets/carrotColor.png',
                      height: 55.h,
                      width: 47.w,
                    ),
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
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.name,
                controller: userController,
                decoration: InputDecoration(hintText: 'enter username'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'enter email',
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  'Mobile number',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                controller: phoneController,

                decoration: InputDecoration(
                  hintText: 'enter mobile number',
                  hintStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextFormField(
                textInputAction: TextInputAction.done,
                obscureText: isVisible,
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'enter password',
                  suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: isVisible == true
                          ? Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.green,
                      )
                          : Icon(
                        Icons.visibility_outlined,
                        color: Colors.green,
                      )),
                ),
              ),
              SizedBox(
                height: 10,
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
              BlocListener<SignUpBloc, SignUpState>(
                listener: (context, state) {
                if (state is SignUpBlocLoaded){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => LogIn()));
                }else if (state is SignUpBlocError){

                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                      content: Text('Registration failed. Please try again.',style: TextStyle(color: Colors.red)),
                       backgroundColor: Colors.red[50],
                    ),
                  );
                }
                },
                child: GestureDetector(
                  onTap: () {
                    if (kDebugMode) {
                      print(userController);
                      print(emailController);
                      print(passwordController);
                    }
                    BlocProvider.of<SignUpBloc>(context).add(FetchSignUp(
                        userName: userController.text,
                        email: emailController.text,
                        passWord: passwordController.text,
                        phone: phoneController.text
                    ));
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
                          fontSize: 20.sp,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.h),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Color(0xFF030303),
                          fontSize: 14.sp,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.70,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) => LogIn()));
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 14.sp,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.70,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
