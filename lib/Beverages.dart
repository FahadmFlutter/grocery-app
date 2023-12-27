import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nectar/filters.dart';

class Beverages extends StatefulWidget {
  const Beverages({Key? key}) : super(key: key);

  @override
  State<Beverages> createState() => _BeveragesState();
}


List<String> text = [
  "Diet Coke",
  "Sprite Can",
  "Apple & Grape\nJuice",
  "Orenge Juice",
  "Coca Cola Can",
  "Pepsi Can"
];
List<String> img = [
  "assets/Diet Coke.png",
  "assets/Sprite.png",
  "assets/appleJuice.png",
  "assets/orengeJuice.png",
  "assets/cocacola.png",
  "assets/pepsi.png"
];
List<String> item = [
  "355ml, Price",
  "325ml, Price",
  "2L, Price",
  "2L, Price",
  "325ml, Price",
  "330ml, Price"
];
List<String> price = [
  "\$1.99",
  "\$1.50",
  "\$15.99",
  "\$15.99",
  "\$4.99",
  "\$5.99",
];



class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                  Text(
                    'Beverages',
                    style: TextStyle(
                      color: Color(0xFF181725),
                      fontSize: 20.sp,
                      fontFamily: 'Gilroy-Bold',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> filters()));
                    },
                      child: Icon(Icons.tune_rounded)),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding:  EdgeInsets.all(5.0.w),
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,childAspectRatio: 170.w/230.h,
                    shrinkWrap: true,
                    children:
                    List.generate(img.length, (index){
                      return  Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(width: 1.w, color: Colors.grey,)),
                        child: Padding(
                          padding:  EdgeInsets.all(10.0.w),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Center(child: Image.asset(img[index], height: 70.h)),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    text[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Text(
                                    item[index],
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    price[index],
                                    style: TextStyle(
                                      color: Color(0xFF181725),
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      height: 0.06,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                  Container(
                                    width: 40.w,
                                    height: 35.h,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF53B175),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(17.r),
                                      ),
                                    ),
                                    child: Icon(Icons.add_rounded,color: Colors.white,),
                                  )
                                ],
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
