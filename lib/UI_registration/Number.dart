import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Verification.dart';



class Number extends StatefulWidget {
  const Number({Key? key}) : super(key: key);

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Verification()));
        },
        backgroundColor: Colors.green,
        child:  Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
      ) ,
      body: Padding(
        padding:  EdgeInsets.all(30.0.w),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back_ios_new_rounded),),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.w),
                child: Text(
                  'Enter your mobile number',
                  style: TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 23.sp,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Text(
                'Mobile Number',
                style: TextStyle(
                  color: Color(0xFF7C7C7C),
                  fontSize: 16.sp,
                  fontFamily: 'Gilroy',
                ),
              ),
              Row(
                children: [
                  Container(
                    height: 20.h,width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.green,borderRadius: BorderRadius.circular(5.r)
                    ),child: CircleAvatar(radius: 10.r,backgroundColor: Colors.red,),
                  ),
                  Text(
                    '  +880',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF030303),
                      fontSize: 18.sp,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                    width: 219.w,
                    child: TextFormField(),
                  ),
                ],
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
