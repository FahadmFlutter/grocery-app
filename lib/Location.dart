import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/Login.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

String dropdownValue = 'Banasree';

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(Icons.arrow_back_ios_new_rounded),
              ),
              Padding(
                padding: EdgeInsets.all(40.0.w),
                child: Center(
                    child: Image.asset(
                  "assets/illustration.png",
                  height: 170.h,
                  width: 255.w,
                )),
              ),
              Center(
                child: Text(
                  'Select Your Location',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26.sp,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Swithch on your location to stay in tune with\nwhat’s happening in your area\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 14.sp,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Your Zone',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              SizedBox(
                width: 300.w,
                height: 50.h,
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  iconSize: 24.sp,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 1.h,
                    color: Colors.grey,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>['Banasree', 'Kottakkal', 'Tirur', 'malappuram']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 18.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                          height: 0.09,),)
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: Text(
                  'Your Area',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.sp,
                    fontFamily: 'Gilroy',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Types of your area',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.sp,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.grey,
                  )
                ],
              ),
              Divider(),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=> LogIn()));
                },
                child: Container(
                  width: 364.w,
                  height: 67.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF53B175),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
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
