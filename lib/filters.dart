import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class filters extends StatefulWidget {
  const filters({Key? key}) : super(key: key);

  @override
  State<filters> createState() => _filtersState();
}

List<bool> isChecked = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

class _filtersState extends State<filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close)),
                  Text(
                    'Filters',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      height: 0.04,
                    ),
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 24.sp,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[0],
                      onChanged: (value) {
                        setState(() {
                          isChecked[0] = !isChecked[0];
                        });
                      }),
                  Text(
                    'Eggs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[1],
                      onChanged: (value) {
                        setState(() {
                          isChecked[1] = !isChecked[1];
                        });
                      }),
                  Text(
                    'Noodles & Pasta',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[2],
                      onChanged: (value) {
                        setState(() {
                          isChecked[2] = !isChecked[2];
                        });
                      }),
                  Text(
                    'Chips & Crisps',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[3],
                      onChanged: (value) {
                        setState(() {
                          isChecked[3] = !isChecked[3];
                        });
                      }),
                  Text(
                    'Fast Food',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Brand',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 24.sp,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[4],
                      onChanged: (value) {
                        setState(() {
                          isChecked[4] = !isChecked[4];
                        });
                      }),
                  Text(
                    'Individual Callection',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[5],
                      onChanged: (value) {
                        setState(() {
                          isChecked[5] = !isChecked[5];
                        });
                      }),
                  Text(
                    'Cocola',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[6],
                      onChanged: (value) {
                        setState(() {
                          isChecked[6] = !isChecked[6];
                        });
                      }),
                  Text(
                    'Ifad',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: Colors.green,
                      value: isChecked[7],
                      onChanged: (value) {
                        setState(() {
                          isChecked[7] = !isChecked[7];
                        });
                      }),
                  Text(
                    'Kazi Farmas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
