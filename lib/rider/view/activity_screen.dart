import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:uber/constant/utils/colors.dart';

import '../../../constant/utils/textStyles.dart';

class ActivityScreenRider extends StatefulWidget {
  const ActivityScreenRider({super.key});

  @override
  State<ActivityScreenRider> createState() => _ActivityScreenRiderState();
}

class _ActivityScreenRiderState extends State<ActivityScreenRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Services", style: AppTextStyles.heading20Bold)),
      body: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Container(
              height: 11.4.h,
              width: 94.w,
              padding: EdgeInsets.symmetric(vertical: 1.7.h),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          color: index == 9 ? transparent : greyShade3))),
              child: Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.5.h, horizontal: 1.w),
                    height: 8.h,
                    width: 8.h,
                    decoration: BoxDecoration(
                        color: greyShadeButton,
                        image: DecorationImage(
                            image: AssetImage("assets/images/vehicle/car.png")),
                        borderRadius: BorderRadius.circular(8.sp)),
                  ),
                  SizedBox(width: 5.w),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("33, 2nd street",
                            style: AppTextStyles.small12Bold),
                        Text(
                            "${DateFormat('dd MMM, kk:mm a').format(DateTime.now())}",
                            style: AppTextStyles.small10
                                .copyWith(color: Colors.black87)),
                        Text("150:00",
                            style: AppTextStyles.small10
                                .copyWith(color: Colors.black87)),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
