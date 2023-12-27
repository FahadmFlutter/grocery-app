import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'order.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

List<String> img = [
  "assets/capsi.png",
  "assets/redEgg.png",
  "assets/banana.png",
  "assets/ginger.png",
];
List<String> text = [
  "Bell Pepper Red",
  "Egg Chicken Red",
  "Organic Bananas",
  "Ginger",
];
List<String> item = [
  '1kg, Price',
  '4pcs, Price',
  '12kg, Price',
  '250gm, Price',
];
List<String> price = [
  '\$4.99',
  '\$1.99',
  '\$3.00',
  '\$2.99',
];

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Text(
                    'My Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 450.h,
                child: ListView.separated(
                  itemCount: img.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 85.h,
                          width: 360.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                img[index],
                                height: 80.h,
                                width: 80.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    text[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    item[index],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 40.w,
                                        height: 35.h,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1.w,
                                                color: Color(0xFFE2E2E2)),
                                            borderRadius:
                                                BorderRadius.circular(17.r),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.remove_rounded,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        '  1  ',
                                        style: TextStyle(
                                          color: Color(0xFF181725),
                                          fontSize: 20,
                                          fontFamily: 'Gilroy',
                                          fontWeight: FontWeight.w600,
                                          height: 0.07,
                                          letterSpacing: 0.10,
                                        ),
                                      ),
                                      Container(
                                        width: 40.w,
                                        height: 35.h,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1.w,
                                                color: Color(0xFFE2E2E2)),
                                            borderRadius:
                                                BorderRadius.circular(17.r),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Divider(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: 470.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.all(30.0.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Checkout',
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                        child: Icon(Icons.close))
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Select Method',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(Icons.arrow_forward_ios_rounded),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Payment',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(Icons.arrow_forward_ios_rounded),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Promo Code',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Pick discount',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(Icons.arrow_forward_ios_rounded),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Divider(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 10.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total Cost',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '\$13.97',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Icon(Icons.arrow_forward_ios_rounded),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.all(30.0.w),
                                child: Text(
                                    "By placing an order you agree to our\nTerms And Conditions"),
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(insetPadding: EdgeInsets.only(left: 10.w,right: 10.w,top: 80.h,),
                                            backgroundColor: Colors.transparent,
                                            content: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: Padding(
                                                padding:  EdgeInsets.all(10.0.w),
                                                child: Column(
                                                  children: [
                                                    Padding(
                                                      padding:  EdgeInsets.only(right: 250.w),
                                                      child: GestureDetector(
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                          },
                                                          child: Icon(Icons.close)),
                                                    ),
                                                    Image.asset(
                                                        'assets/errorimg.png',height: 200.h,width: 200.w,),
                                                    SizedBox(height: 30.h,),
                                                    Text(
                                                      'Oops! Order Failed',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                        color: Color(0xFF181725),
                                                        fontSize: 26.sp,
                                                        fontFamily: 'Gilroy',
                                                        fontWeight: FontWeight.w600,
                                                      ),
                                                    ),
                                                    SizedBox(height: 15.h,),
                                                    Text(
                                                      "Something went tembly wrong.",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                    SizedBox(height: 40.h,),
                                                    TextButton(
                                                        onPressed: () {
                                                          Navigator.of(_).pop();
                                                        },
                                                        child: GestureDetector(
                                                          onTap: (){
                                                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Order()));
                                                          },
                                                          child: Container(
                                                            width: 313.w,
                                                            height: 67.h,
                                                            decoration: ShapeDecoration(
                                                              color:Color(0xFF53B175),
                                                              shape:
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(19.r),
                                                              ),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Please Try Again',
                                                                textAlign:
                                                                TextAlign.center,
                                                                style: TextStyle(
                                                                  color:
                                                                  Colors.white,
                                                                  fontSize: 18.r,
                                                                  fontWeight:
                                                                  FontWeight.w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    GestureDetector(
                                                      onTap: (){
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        width: 313.w,
                                                        height: 67.h,
                                                        decoration: ShapeDecoration(
                                                          shape:
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(19.r),
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Back to home',
                                                            textAlign:
                                                            TextAlign.center,
                                                            style: TextStyle(
                                                              color:
                                                              Colors.black,
                                                              fontSize: 18.sp,
                                                              fontWeight:
                                                              FontWeight.w600,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            actions: [

                                            ],
                                          ));
                                },
                                child: Center(
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
                                        'Place Order',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      });
                },
                child: Center(
                  child: Container(
                    width: 320.w,
                    height: 67.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.r),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '             Go to Checkout',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            height: 20.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.r),
                                color: Colors.green[700]),
                            child: Center(
                              child: Text(
                                '\$12.96',
                                style: TextStyle(
                                  color: Color(0xFFFCFCFC),
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
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
