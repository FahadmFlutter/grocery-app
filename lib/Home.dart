import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/Apple.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                "assets/carrotColor.png",
                height: 40.h,
              )),
              Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on),
                    Text(
                      '  Dhaka, Banassre',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF4C4E4D),
                        fontSize: 18.sp,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.h),
                child: Container(
                  height: 50.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF1F2F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 250.w,
                        child: TextFormField(
                          decoration: InputDecoration(hintText: "Search Store"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 315.w,
                child: Image.asset("assets/banner.png"),
              ),
              Padding(
                padding: EdgeInsets.all(22.5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive Offer',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 24.sp,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16.sp,
                        fontFamily: 'Gilroy',
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/banana.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Organic Bananas',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '7pcs, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Apple()));
                      },
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Container(
                          width: 175.w,
                          height: 220.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(
                                  color: Color(0xFFE2E2E2), width: 1.5.w)),
                          child: Padding(
                            padding: EdgeInsets.all(15.0.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                  child: Container(
                                    width: 100.w,
                                    height: 100.h,
                                    child: Image.asset("assets/apple.png"),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Red Apple',
                                      style: TextStyle(
                                        color: Color(0xFF181725),
                                        fontSize: 16.sp,
                                        fontFamily: 'Gilroy-Bold',
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                    Text(
                                      '1kg, Priceg',
                                      style: TextStyle(
                                        color: Color(0xFF7C7C7C),
                                        fontSize: 14.sp,
                                        fontFamily: 'Gilroy-Medium',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$4.99',
                                      style: TextStyle(
                                        color: Color(0xFF181725),
                                        fontSize: 18.sp,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.10,
                                      ),
                                    ),
                                    Container(
                                      height: 30.h,
                                      width: 35.w,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/banana.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Organic Bananas',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '7pcs, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Best Selling',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 24.sp,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16.sp,
                        fontFamily: 'Gilroy',
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/capsi.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bell Pepper Red',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '1kg, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/ginger.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Ginger',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '250gm, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/banana.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Organic Bananas',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '7pcs, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(22.5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Groceries',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 24.sp,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Color(0xFF53B175),
                        fontSize: 16.sp,
                        fontFamily: 'Gilroy',
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 248.19.w,
                        height: 90.h,
                        decoration: ShapeDecoration(
                          color: Colors.orange[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/beens.png",
                              ),
                              Text(
                                '  Pulses',
                                style: TextStyle(
                                  color: Color(0xFF3E423F),
                                  fontSize: 20.sp,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 248.19.w,
                        height: 90.h,
                        decoration: ShapeDecoration(
                          color: Colors.green[50],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/rice.png",
                              ),
                              Text(
                                '  Rice',
                                style: TextStyle(
                                  color: Color(0xFF3E423F),
                                  fontSize: 20.sp,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/beef.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Beef Bone',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '1kg, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/chicken.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Broiler Chicken',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '1kg, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Container(
                        width: 175.w,
                        height: 220.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                                color: Color(0xFFE2E2E2), width: 1.5.w)),
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  width: 100.w,
                                  height: 100.h,
                                  child: Image.asset("assets/banana.png"),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Organic Bananas',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    '7pcs, Priceg',
                                    style: TextStyle(
                                      color: Color(0xFF7C7C7C),
                                      fontSize: 14.sp,
                                      fontFamily: 'Gilroy-Medium',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$4.99',
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    height: 30.h,
                                    width: 35.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
