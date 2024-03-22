import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constant/utils/colors.dart';
import '../../../constant/utils/textStyles.dart';
import '../widgets/more_ways.dart';

class RiderHomeScreen extends StatefulWidget {
  const RiderHomeScreen({super.key});

  @override
  State<RiderHomeScreen> createState() => _RiderHomeScreenState();
}

class _RiderHomeScreenState extends State<RiderHomeScreen> {
  List suggestions = [
    {'name': "Trip", 'image': 'assets/images/suggestions/trip.png'},
    {'name': "Rental", 'image': 'assets/images/suggestions/rentals.png'},
    {'name': "Reserve", 'image': 'assets/images/suggestions/reserve.png'},
    {'name': "Intercity", 'image': 'assets/images/suggestions/intercity.png'}
  ];

  List moreWaysToUber = [
    {
      'title': "Send a package",
      'sub_title': "On-demand deliver across town",
      'image': 'assets/images/moreWaysUber/sendAPackage.png'
    },
    {
      'title': "Premier Trips",
      'sub_title': "Top-rated driver, newer cars",
      'image': 'assets/images/moreWaysUber/premierTrips.png'
    },
    {
      'title': "Safety toolkit",
      'sub_title': "On-trip help with safety issues",
      'image': 'assets/images/moreWaysUber/safetyToolKit.png'
    },
  ];

  List planYourNextTrip = [
    {
      'title': "Travel intercity",
      'sub_title': "Get to remote locations with ease",
      'image': 'assets/images/planNextTrip/travelIntercity.png'
    },
    {
      'title': "Rentals",
      'sub_title': "Travel from 1 t0 12 hours",
      'image': 'assets/images/planNextTrip/travelIntercity.png'
    },
  ];

  List saveEveryDay = [
    {
      'title': "Uber moto trips",
      'sub_title': "Affordable motorcycle pick-ups",
      'image': 'assets/images/saveEveryDay/uberMotoTrips.png'
    },
    {
      'title': "Try a group trip",
      'sub_title': "Seamless trips, together",
      'image': 'assets/images/saveEveryDay/tryAGroupTrip.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Uber",
          style: AppTextStyles.heading20Bold,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          ///searchbar
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.sp),
                  color: greyShade3),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: black87,
                    size: 4.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Where to?",
                    style: AppTextStyles.body14Bold,
                  )
                ],
              ),
            ),
          ),

          ///previous trip records
          ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 0.5.h),
                  padding: EdgeInsets.symmetric(vertical: 0.3.h),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 2.5.h,
                        backgroundColor: greyShade3,
                        child: Icon(
                          Icons.location_on,
                          color: black,
                        ),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Main Address",
                            style: AppTextStyles.body14Bold,
                          ),
                          Text(
                            "Main Address",
                            style:
                                AppTextStyles.small10.copyWith(color: black38),
                          ),
                        ],
                      )),
                      SizedBox(
                        width: 3.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: greyShade3,
                        size: 15.sp,
                      )
                    ],
                  ),
                );
              }),
          SizedBox(height: 4.h),

          ///suggestions
          Row(
            children: [
              Text("Suggestions", style: AppTextStyles.body14Bold),
              const Spacer(),
              Text("See All",
                  style: AppTextStyles.small10.copyWith(color: Colors.black87))
            ],
          ),
          SizedBox(height: 1.h),

          /// suggestion trips
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: suggestions.map((e) {
              return SizedBox(
                height: 20.w,
                width: 20.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 15.w,
                      width: 20.w,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: greyShadeButton,
                          borderRadius: BorderRadius.circular(8.sp)),
                      child: Image(
                        image: AssetImage("${e['image']}"),
                      ),
                    ),
                    Text("${e['name']}",
                        style: AppTextStyles.small10Bold
                            .copyWith(color: Colors.black87))
                  ],
                ),
              );
            }).toList(),
          ),

          SizedBox(height: 2.h),

          Image(
            image: AssetImage('assets/images/promotion/promo.png'),
          ),

          SizedBox(height: 3.h),
          MoreWaysToUber(
            moreWaysToUber: moreWaysToUber,
            title: "More ways to use Uber",
          ),
          SizedBox(height: 3.h),
          MoreWaysToUber(
            moreWaysToUber: planYourNextTrip,
            title: "Plan your next trip",
          ),
          SizedBox(height: 3.h),
          MoreWaysToUber(
            moreWaysToUber: saveEveryDay,
            title: "Save Every Day",
          ),
        ],
      ),
    );
  }
}
