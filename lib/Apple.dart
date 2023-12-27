import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Apple extends StatefulWidget {
  const Apple({Key? key}) : super(key: key);

  @override
  State<Apple> createState() => _AppleState();
}

class _AppleState extends State<Apple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(20.0.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [


                    GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Container(child: Icon(Icons.arrow_back_ios_new_rounded))),


                    Icon(Icons.file_upload_outlined),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: 300.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/apple.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 20.w,
                    height: 5.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.r),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(8.0.h),
                    child: Container(
                      width: 5.w,
                      height: 5.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFB3B3B3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.r),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFFB3B3B3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.r),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.all(20.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Naturel Red Apple',
                          style: TextStyle(
                            color: Color(0xFF181725),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          '1kg, Price',
                          style: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 16.sp,
                          ),
                        )
                      ],
                    ),
                    Icon(Icons.favorite_border,color: Colors.grey,)
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(20.w),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove_rounded,color: Colors.grey,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 5.0.w),
                          child: Container(
                            width: 45.w,
                            height: 37.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.w, color: Color(0xFFE2E2E2)),
                                borderRadius: BorderRadius.circular(17.r),
                              ),
                            ),child: Center(
                              child: Text(
                              '1',
                              style: TextStyle(
                                color: Color(0xFF181725),
                                fontSize: 18.sp,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                              ),
                                          ),
                            ),
                          ),
                        ),
                        Icon(Icons.add,color: Colors.green,),
                      ],
                    ),
                    Text(
                      '\$4.99',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 22.sp,
                        fontFamily: 'Gilroy-Bold',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product Detail',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 16.sp,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        height: 0.07,
                      ),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                child: Text(
                  'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11.sp,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w,),
                child: Divider()
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nutritions                                 ',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 16.sp,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 33.61.w,
                      height: 18.h,
                      decoration: ShapeDecoration(
                        color: Color(0xFFEBEBEB),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.r)),
                      ),
                      child: Center(
                        child: Text(
                          '100gr',
                          style: TextStyle(
                            color: Color(0xFF7C7C7C),
                            fontSize: 9.sp,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            height: 0.17,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.0.w,),
                  child: Divider()
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Review                       ',
                      style: TextStyle(
                        color: Color(0xFF181725),
                        fontSize: 16.sp,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 92.47.w,
                      height: 14.h,
                      child: Image.asset("assets/star.png"),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0.w,vertical: 20.w),
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
                      'Add To Basket',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
