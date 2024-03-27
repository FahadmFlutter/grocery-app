import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../UI/Location.dart';


class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: Text(
              'Resend Code',
              style: TextStyle(
                color: Color(0xFF53B175),
                fontSize: 18.sp,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            )
          ),
            FloatingActionButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Location()));
              },

              backgroundColor: Colors.green,
              child:  Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
            ),
          ],
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
                    'Enter your 4-digit code',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 23.sp,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'Code',
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                  ),
                ),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "- - - -"
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
