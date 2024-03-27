import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BloC/Cart/cart_bloc.dart';
import 'package:nectar/Model_Classes/CartModel.dart';

import 'order.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}
 late CartModel cartData;




class _MyCartState extends State<MyCart> {


  @override
  void initState() {
    BlocProvider.of<CartBloc>(context).add(FetchCart());
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (State is CartBlocLoading) {
                    if (kDebugMode) {
                      print("loading");
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is CartBlocError) {
                    return const Center(
                      child: Text(
                        '!!  ⨻  ERROR  ⨻  !!',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    );
                  }
                  if (state is CartBlocLoaded) {
                    cartData = BlocProvider.of<CartBloc>(context).cartModel;
                    print(cartData.data![0].cartProducts!.length);
                    return SizedBox(
                      height:100*cartData.data![0].cartProducts!.length.toDouble(),
                      child: ListView.separated(
                          itemCount: cartData.data![0].cartProducts!.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext, int index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: NetworkImage(cartData.data![0].cartProducts![index].product!.image3![0].url.toString()),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          cartData
                                              .data![0]
                                              .cartProducts![index]
                                              .product!
                                              .name
                                              .toString(),
                                          style:  TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey[700],
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10,),
                                        Text(
                                          '₹${cartData.data![0].cartProducts![index].price}',
                                          style:  TextStyle(
                                              fontSize: 20,
                                              color: Colors.green[400],
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                       GestureDetector(
                                         onTap:(){},
                                         child: Icon(
                                          Icons.close,
                                          color: Colors.red,
                                                                               ),
                                       ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 18, left: 5),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 3),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            children: [
                                              const Text(
                                                "-   ",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.grey),
                                              ),
                                              Text(
                                                cartData.data![0].cartProducts![index].quantity.toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.grey[600]),
                                              ),
                                              const Text(
                                                "   +",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }, separatorBuilder: (BuildContext context, int index) { return Divider(); },),
                    );
                  } else {
                    return Text('No data available');
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
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
                        padding: EdgeInsets.all(30.0.w),
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
                                onTap: () {
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
                                // Text(
                                //   '₹ '+cartData.data![0].totalPrice.toString(),
                                //   textAlign: TextAlign.right,
                                //   style: TextStyle(
                                //       fontSize: 16.sp,
                                //       fontWeight: FontWeight.bold),
                                // ),
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
                        padding: EdgeInsets.all(30.0.w),
                        child: Text(
                            "By placing an order you agree to our\nTerms And Conditions"),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                insetPadding: EdgeInsets.only(
                                  left: 10.w,
                                  right: 10.w,
                                  top: 80.h,
                                ),
                                backgroundColor: Colors.transparent,
                                content: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                      BorderRadius.circular(
                                          20)),
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0.w),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: 250.w),
                                          child: GestureDetector(
                                              onTap: () {
                                                Navigator.pop(
                                                    context);
                                              },
                                              child: Icon(
                                                  Icons.close)),
                                        ),
                                        Image.asset(
                                          'assets/errorimg.png',
                                          height: 200.h,
                                          width: 200.w,
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Text(
                                          'Oops! Order Failed',
                                          textAlign:
                                          TextAlign.center,
                                          style: TextStyle(
                                            color:
                                            Color(0xFF181725),
                                            fontSize: 26.sp,
                                            fontFamily: 'Gilroy',
                                            fontWeight:
                                            FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.h,
                                        ),
                                        Text(
                                          "Something went tembly wrong.",
                                          style: TextStyle(
                                              color: Colors.grey),
                                          textAlign:
                                          TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 40.h,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(_).pop();
                                            },
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.of(
                                                    context)
                                                    .push(MaterialPageRoute(
                                                    builder: (_) =>
                                                        Order()));
                                              },
                                              child: Container(
                                                width: 313.w,
                                                height: 67.h,
                                                decoration:
                                                ShapeDecoration(
                                                  color: Color(
                                                      0xFF53B175),
                                                  shape:
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        19.r),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Please Try Again',
                                                    textAlign:
                                                    TextAlign
                                                        .center,
                                                    style:
                                                    TextStyle(
                                                      color: Colors
                                                          .white,
                                                      fontSize:
                                                      18.r,
                                                      fontWeight:
                                                      FontWeight
                                                          .w600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: 313.w,
                                            height: 67.h,
                                            decoration:
                                            ShapeDecoration(
                                              shape:
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    19.r),
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Back to home',
                                                textAlign: TextAlign
                                                    .center,
                                                style: TextStyle(
                                                  color:
                                                  Colors.black,
                                                  fontSize: 18.sp,
                                                  fontWeight:
                                                  FontWeight
                                                      .w600,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [],
                              ));
                        },
                        child: Center(
                          child: Container(
                            width: 330.w,
                            height: 67.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFF53B175),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(19.r),
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
                  'Go to Checkout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.r),
                      color: Colors.green[700]),
                  child: Center(
                    child: Text(
                      '₹ '
                          // +cartData.data![0].totalPrice.toString()
                      ,
                      style: TextStyle(
                        color: Color(0xFFFCFCFC),
                        fontSize: 20.sp,
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
    );
  }
}
