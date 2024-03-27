import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/BloC/Banner/banner_bloc.dart';
import 'package:nectar/BloC/Get_All_Products/get_all_products_bloc.dart';
import 'package:nectar/Model_Classes/BannerModel.dart';
import 'package:nectar/UI/Product_Page.dart';

import '../Model_Classes/GetAllProductsModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

late GetAllProductsModel data;
late BannerModel bannerData;

List<String> img = [
  "assets/Diet Coke.png",
  "assets/Sprite.png",
  "assets/appleJuice.png",
  "assets/orengeJuice.png",
  "assets/cocacola.png",
  "assets/pepsi.png"
];
List<String> text = [
  "Diet Coke",
  "Sprite Can",
  "Apple & Grape\nJuice",
  "Orenge Juice",
  "Coca Cola Can",
  "Pepsi Can"
];

class _HomeState extends State<Home> {
  @override
  void initState() {
    BlocProvider.of<GetAllProductsBloc>(context).add(FetchGetAllProducts());
    BlocProvider.of<BannerBloc>(context).add(FetchBanner());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/carrotColor.png",
                    height: 30.h,
                  ),
                  Row(

                    children: [
                      Icon(Icons.location_on),
                      Text(
                        ' Kottakkal',
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
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20.0.h),
                child: Container(
                  height: 45.h,
                  width: 350.w,
                  decoration: ShapeDecoration(
                    color: Colors.green[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),
                  child: SizedBox(
                    width: 300.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.green,
                        ),
                        suffix: SizedBox(
                          width: 10.w,
                        ),
                        border: InputBorder.none,
                        hintText: "Search Store",
                      ),
                    ),
                  ),
                ),
              ),
              BlocBuilder<BannerBloc, BannerState>(
                builder: (context, state) {
                  if (State is BannerLoading) {
                    if (kDebugMode) {
                      print("loading");
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is BannerError) {
                    return const Center(
                      child: Text(
                        '!!  ⨻  ERROR  ⨻  !!',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    );
                  }
                  if (state is BannerLoaded) {
                    bannerData =
                        BlocProvider.of<BannerBloc>(context).bannerModel;
                    return CarouselSlider.builder(
                        itemCount: bannerData.banners!.length,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            Container(
                              height: 150,
                              width: 350,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(bannerData
                                        .banners![itemIndex].image8!.url
                                        .toString()),
                                    fit: BoxFit.fill),
                              ),
                            ),
                        options: CarouselOptions(
                          height: 120,
                          aspectRatio: 350 / 100,
                          viewportFraction: 0.8,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: const Duration(seconds: 3),
                          autoPlay: true,
                        ));
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                        color: const Color(0xFF181725),
                        fontSize: 24.sp,
                        fontFamily: 'Gilroy',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 16.sp,
                          fontFamily: 'Gilroy',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              BlocBuilder<GetAllProductsBloc, GetAllProductsState>(
                builder: (context, state) {
                  if (State is GetAllProductsLoading) {
                    if (kDebugMode) {
                      print("loading");
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is GetAllProductsError) {
                    return const Center(
                      child: Text(
                        '!!  ⨻  ERROR  ⨻  !!',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    );
                  }
                  if (state is GetAllProductsLoaded) {
                    data = BlocProvider.of<GetAllProductsBloc>(context)
                        .getAllProductsModel;
                    return GridView.count(
                        padding: const EdgeInsets.all(10),
                        physics: const ScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 170.w / 230.h,
                        shrinkWrap: true,
                        children: List.generate(data.data!.length, (index) {
                          return GestureDetector(
                            onTap: () {
                              print("hello"+data.data![index].id.toString());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ProductPage(
                                      id: data.data![index].id.toString(),
                                  )
                                ),
                              );
                            },
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Center(
                                      child: Container(
                                        width: 100.w,
                                        height: 100.h,
                                        child: Image.network(data
                                            .data![index].image![0].url
                                            .toString()),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.data![index].name.toString(),
                                          style: TextStyle(
                                            color: Color(0xFF181725),
                                            fontSize: 16.sp,
                                            fontFamily: 'Gilroy-Bold',
                                            fontWeight: FontWeight.bold,
                                            letterSpacing: 0.10,
                                          ),
                                        ),
                                        Text(
                                          '1 pcs, Price',
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
                                          '₹ ${data.data![index].price}',
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
                          );
                        }));
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
