import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'filters.dart';

class Eggs extends StatefulWidget {
  const Eggs({Key? key}) : super(key: key);

  @override
  State<Eggs> createState() => _EggsState();
}



List<String> text = [
  "Egg Chicken Red",
  "Egg Chicken White",
  "Egg Pasta",
  "Egg Noodles",
  "Mayonnais Eggless",
  "Egg Noodles"
];
List<String> img = [
  "assets/redEgg.png",
  "assets/whiteEgg.png",
  "assets/pasta.png",
  "assets/egg-noodle.png",
  "assets/mayo.png",
  "assets/noodles.png"
];
List<String> item = [
  "4pcs, Price",
  "4pcs, Price",
  "30gm, Price",
  "30gm, Price",
  "30gm, Price",
  "30gm, Price"
];
List<String> price = [
  "\$1.99",
  "\$1.50",
  "\$15.99",
  "\$15.99",
  "\$4.99",
  "\$5.99",
];


class _EggsState extends State<Eggs> {
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
                    'Dairy & Eggs',
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
                padding:  EdgeInsets.all(5.0),
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
      ),);
  }
}
