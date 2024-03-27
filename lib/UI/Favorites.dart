import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

List<String> text = [
  "Diet Coke",
  "Sprite Can",
  "Apple & Grape Juice",
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
  "\$1.99 ",
  "\$1.50 ",
  "\$15.99 ",
  "\$15.99 ",
  "\$4.99 ",
  "\$5.99 ",
];


class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding:  EdgeInsets.all(20.w),
                  child: Text(
                    'Favorurite',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 447.h,
                child: ListView.separated(
                  itemCount: img.length,
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Padding(
                        padding:  EdgeInsets.all(8.0.w),
                        child: Container(
                          height: 85.h,width: 360.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(img[index],height: 55.h,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    text[index],
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    item[index],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14.sp,
                                    ),
                                  ),


                                ],
                              ),
                              Row(crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                  price[index],
                                  style: TextStyle(
                                    color: Color(0xFF181725),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                  Icon(Icons.arrow_forward_ios_rounded),
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
              Center(
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
                    child: Text(
                      'Add All To Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
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
