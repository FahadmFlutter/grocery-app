import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BloC/Login/login_bloc.dart';
import 'package:nectar/UI/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../UI/BottomNavBar.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

bool isVisible = true;
final emailController = TextEditingController();
final userController = TextEditingController();
final passwordController = TextEditingController();
final phoneController = TextEditingController();
final _formKey = GlobalKey<FormState>();

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Padding(
                    padding: EdgeInsets.all(50.0.h),
                    child: Image.asset(
                      'assets/carrotColor.png',
                      height: 55.h,
                      width: 47.w,
                    ),
                  )),
              Text(
                'Log In',
                style: TextStyle(
                  color: Color(0xFF030303),
                  fontSize: 30.sp,
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
                padding: EdgeInsets.only(top: 40.h),
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
                decoration: InputDecoration(
                  hintText: 'enter email',
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
              Padding(
                padding: EdgeInsets.all(20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
              BlocListener<LoginBloc, LoginState>(
                listener: (context, state) {
                 if (state is LoginBlocLoaded){
                   token(BlocProvider.of<LoginBloc>(context).logInModel.tokens!.accessToken.toString());
                   Navigator.of(context).pushAndRemoveUntil(
                     MaterialPageRoute(builder: (_) => BottomNavBar()),
                         (Route<dynamic> route) => false,
                   );

                 } else if (state is LoginBlocError){
                    ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(
                         action: SnackBarAction(label:'Sign up',textColor: Colors.red[600], onPressed: (){
                           Navigator.pop(context);
                         }),
                        content: Text('Login failed. Please try again.',style: TextStyle(color: Colors.red),),
                        backgroundColor: Colors.red[50],
                      ),
                    );
                  }
                  // TODO: implement listener
                },
                child: GestureDetector(
                  onTap: () {
                    BlocProvider.of<LoginBloc>(context).add(FetchLogin(
                      email: emailController.text,
                      passWord: passwordController.text,
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
                        'Log In',
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
                        'Don’t have an account?',
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
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Sign Up',
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
  void token(String token)async{
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("Token", token);
  }
}
