import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/utils/colors.dart';
import '../../../../constant/utils/textStyles.dart';

class ServiceScreenRider extends StatefulWidget {
  const ServiceScreenRider({super.key});

  @override
  State<ServiceScreenRider> createState() => _ServiceScreenRiderState();
}

class _ServiceScreenRiderState extends State<ServiceScreenRider> {
  List firstRow = [
    {'name': "Trip", 'image': "assets/images/services/trip.png"},
    {'name': "Rentals", 'image': "assets/images/services/rentals.png"},
  ];
  List secondRow = [
    {'name': "Reserve", 'image': "assets/images/services/reserve.png"},
    {'name': "Intercity", 'image': "assets/images/services/intercity.png"},
    {'name': "Group Ride", 'image': "assets/images/services/groupRide.png"},
    {'name': "Package", 'image': "assets/images/services/package.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Services", style: AppTextStyles.heading20Bold)),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Text("Go anywhere, get anything", style: AppTextStyles.body14Bold),
          SizedBox(height: 2.h),

          ///first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: firstRow
                .map((e) => Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                      width: 44.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.sp),
                          color: greyShadeButton),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${e['name']}", style: AppTextStyles.small12),
                          SizedBox(
                            height: 8.h,
                            width: 8.h,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("${e['image']}"),
                            ),
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),

          SizedBox(height: 2.h),

          ///second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: secondRow
                .map((e) => Column(
                      children: [
                        Container(
                          width: 20.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 1.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.sp),
                              color: greyShadeButton),
                          child: SizedBox(
                            height: 8.h,
                            width: 8.h,
                            child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage("${e['image']}"),
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text("${e['name']}",style: AppTextStyles.small10)
                      ],
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
