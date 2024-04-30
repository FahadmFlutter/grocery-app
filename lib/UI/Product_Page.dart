import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BloC/Add_to_cart/addtocart_bloc.dart';
import 'package:nectar/BloC/Product/product_bloc.dart';
import 'package:nectar/UI/Home.dart';

import '../Model_Classes/ProductModel.dart';

class ProductPage extends StatefulWidget {
  final String id;

  ProductPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

late ProductModel productData;

class _ProductPageState extends State<ProductPage> {



  int counter = 1;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  void decrementCounter() {
    if (counter > 1) {
      setState(() {
        counter--;
      });
    }
  }



  @override
  void initState() {
    print('hi' + widget.id);
    BlocProvider.of<ProductBloc>(context).add(FetchProduct(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              if (State is ProductBlocLoading) {
                if (kDebugMode) {
                  print("loading");
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is ProductBlocError) {
                return Center(
                  child: Text(
                    '!!  ⨻  ERROR  ⨻  !!',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                );
              }
              if (state is ProductBlocLoaded) {
                productData = BlocProvider.of<ProductBloc>(context).productModel;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                        itemCount: productData.data!.image6!.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                              width: 300.w,
                              height: 200.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(productData
                                        .data!.image6![itemIndex].url
                                        .toString()),
                                    fit: BoxFit.contain),
                              ),
                            ),
                        options: CarouselOptions(
                          height: 200,
                          aspectRatio: 1 / 1,
                          viewportFraction: 0.6,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: const Duration(seconds: 2),
                          autoPlay: true,
                        )),
                    // Center(
                    //   child: Container(
                    //     width: 300.w,
                    //     height: 200.h,
                    //     decoration: BoxDecoration(
                    //       image: DecorationImage(
                    //         image: NetworkImage(productData.data!.image![0].url.toString()),
                    //         fit: BoxFit.fitHeight,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Padding(
                      padding: EdgeInsets.all(20.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productData.data!.name.toString(),
                                style: TextStyle(
                                    color: Color(0xFF181725),
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
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
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  if (counter > 1) {
                                    setState(() {
                                      counter--;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.remove_rounded,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 5.0.w),
                                child: Container(
                                  width: 45.w,
                                  height: 37.h,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1.w, color: Color(0xFFE2E2E2)),
                                      borderRadius: BorderRadius.circular(17.r),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '$counter',
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
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    counter++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '₹ ${productData.data!.price.toString()}',
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w, vertical: 20.h),
                      child: Text(
                        'Product Detail',
                        style: TextStyle(
                          color: Color(0xFF181725),
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          height: 0.07,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
                      child: Text(
                        productData.data!.description.toString(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11.sp,
                          fontFamily: 'Gilroy-Medium',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w,
                        ),
                        child: const Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w, vertical: 10.h),
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

                        ],
                      ),
                    ),
                    SizedBox(height: 100*double.parse(productData.data!.reviews!.length.toString()),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: productData.data!.reviews!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            titleAlignment: ListTileTitleAlignment.top,
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  productData.data!.reviews![index].user!.image4!.url!.toString()),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RatingBar.builder(
                                  initialRating:  double.parse(productData.data!.reviews![index].rating.toString()),
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,ignoreGestures:true,
                                  itemSize: 25,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Text(
                                  productData.data!.reviews![index].user!.deliveryAddresses![index].fullName.toString(),
                                  style: TextStyle(
                                      color: Colors.grey
                                  ),
                                ),
                                SizedBox(height: 10,)
                              ],
                            ),
                            subtitle:Text(
                              productData.data!.reviews![index].comment.toString(),

                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w,
                        ),
                        child: const Divider()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0.w, vertical: 20.w),
                          child: BlocListener<AddtocartBloc,AddtocartState>(
                            listener: (context, state) {
                              if (state is AddtocartBlocLoaded) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Product Added to Cart',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    backgroundColor: Colors.green[50],
                                  ),
                                );
                              } else if (state is AddtocartBlocError) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                      'Something went wrong !!',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    backgroundColor: Colors.red[50],
                                  ),
                                );
                              }
                              // TODO: implement listener
                            },
                            child: GestureDetector(
                              onTap: () {
                                BlocProvider.of<AddtocartBloc>(context).add(FetchAddtoCart(product_id: productData.data!.id.toString(), quantity: counter ));
                                if (kDebugMode) {
                                  print(productData.data!.id.toString()+counter.toString());
                                }
                              },
                              child: Container(
                                width: 150.w,
                                height: 50.h,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF53B175),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                   'Add to cart',
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
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0.w, vertical: 20.w),
                          child: Container(
                            width: 150.w,
                            height: 50.h,
                            decoration: ShapeDecoration(
                              color: Color(0xffF3603F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Buy Now',
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
                        ),
                      ],
                    )
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
