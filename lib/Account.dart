import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}
List<String> text = [
  "Orders",
  "My Details",
  "Delivery Address",
  "Payment Methods",
  "Promo Cord",
  "Notifecations",
  "Help",
  "About"
];

List<Widget>icon=[
  Icon(Icons.shopping_bag_outlined),
  Icon(Icons.contact_mail_outlined),
  Icon(Icons.location_on_outlined),
  Icon(Icons.payment),
  Icon(Icons.confirmation_number),
  Icon(Icons.notifications_none_rounded),
  Icon(Icons.help_outline_rounded),
  Icon(Icons.error_outline_rounded),

];

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(30.0.w),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60.h,width: 60.w,
                      child: Image.asset("assets/profile.png")),
                  SizedBox(width: 20.w,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Afsar Hossen  ',
                            style: TextStyle(
                              color: Color(0xFF181725),
                              fontSize: 20.sp,
                              fontFamily: 'Gilroy-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.edit_outlined,color: Colors.green,)
                        ],
                      ),
                      Text(
                        'Imshuvo97@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.separated(
                itemCount: text.length,
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return  SizedBox(
                    height: 40.h,
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 20.w,),
                            icon[index],
                            SizedBox(width: 20.w,),
                            Text(
                              text[index],
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Center(
              child: Padding(
                padding:  EdgeInsets.all(30.0.h),
                child: Container(
                  width: 360.w,
                  height: 67.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF2F3F2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19.r),
                    ),
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout,color: Colors.green,),
                      SizedBox(width: 70.w,),
                      Text(
                        'Log Out',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 80.w,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
