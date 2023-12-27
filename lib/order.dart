import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(right: 35.w),
                child: Image.asset("assets/joy.png",height: 230.h,width: 250.w,),
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Text(
                  'Your Order has been\n accepted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Your items has been placcd and is on \nit’s way to being processed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy-Medium',
                  ),
                ),
              ),


              SizedBox(height: 100.h,),

              Center(
                child: Container(
                  width: 330.w,
                  height: 67.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Track Order',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFFFF9FF),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
              ),

              Center(
                child: Container(
                  width: 330.w,
                  height: 67.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        'Back to home',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold
                        ),
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
