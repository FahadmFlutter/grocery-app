import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Beverages.dart';
import 'eggs.dart';


class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

List<String> text = [
  "Frash Fruits\n& Vegetable",
  "Cooking Oil\n& Ghee",
  "Meat & Fish",
  "Bakery & Snacks",
  "Dairy & Eggs",
  "Beverages"
];
List<String> img = [
  "assets/vege.png",
  "assets/oil.png",
  "assets/nonVeg.png",
  "assets/Bakery.png",
  "assets/dairy.png",
  "assets/drinks.png"
];
List<Color>a=[
  Colors.green.shade50,
  Colors.orange.shade50,
  Colors.red.shade50,
  Colors.purple.shade50,
  Colors.yellow.shade50,
  Colors.blue.shade50,
];
List<Color>b=[
  Colors.green.shade200,
  Colors.orange.shade200,
  Colors.red.shade200,
  Colors.purple.shade200,
  Colors.yellow.shade200,
  Colors.blue.shade200,
];





class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Find Products',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 20.sp,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.w400,
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

            Expanded(
              child: Padding(
                padding:  EdgeInsets.all(5.0.w),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children:
                    List.generate(img.length, (index){
                      return  GestureDetector(
                        onTap: (){
                          if(index==5){
                          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Beverages()));
                          }
                          else if(index==4){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Eggs()));
                          }
                      },
                        child: Container(
                          height: 150.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                              color:a[index],
                              borderRadius: BorderRadius.circular(20.r),
                              border: Border.all(width: 1.w, color: b[index],)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Image.asset(img[index], height: 70.h),
                              Text(
                                text[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF181725),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.10,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

