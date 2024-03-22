import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uber/constant/utils/colors.dart';
import 'package:uber/constant/utils/textStyles.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List accountTopButtons = [
    {'icon': CupertinoIcons.shield_fill, 'name': "Help"},
    {'icon': CupertinoIcons.creditcard_fill, 'name': "Payment"},
    {'icon': CupertinoIcons.square_list_fill, 'name': "Activity"},
  ];
  List accountButtons = [
    {'icon': CupertinoIcons.gift_fill, 'name': "Send a gift"},
    {'icon': CupertinoIcons.gear_alt_fill, 'name': "Settings"},
    {'icon': CupertinoIcons.envelope_fill, 'name': "Message"},
    {
      'icon': CupertinoIcons.money_dollar_circle_fill,
      'name': "Earn by driving or delivering"
    },
    {'icon': CupertinoIcons.briefcase_fill, 'name': "Business Hub"},
    {
      'icon': CupertinoIcons.person_2_fill,
      'name': "Refer friends, unlock deals"
    },
    {'icon': CupertinoIcons.person_fill, 'name': "Manage Uber Account"},
    {'icon': CupertinoIcons.power, 'name': "Logout"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ///Top Section
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            children: [
              Row(
                children: [
                  SizedBox(
                      width: 70.w,
                      child: Text("Sukumar Raja",
                          style: AppTextStyles.heading24Bold)),
                  Container(
                    height: 16.w,
                    width: 16.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: black,
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/uberLogo/uber.png")),
                        border: Border.all(color: black87)),
                  )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: accountTopButtons
                    .map((e) => Container(
                          height: 10.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                              color: greyShade3,
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(e['icon'], size: 4.h, color: black),
                              SizedBox(height: 1.h),
                              Text("${e['name']}", style: AppTextStyles.small10)
                            ],
                          ),
                        ))
                    .toList(),
              )
            ],
          ),
          Divider(thickness: 0.5.h, color: greyShade2),
          SizedBox(height: 2.h),
          ListView.builder(
              itemCount: accountButtons.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Row(
                    children: [
                      Icon(accountButtons[index]['icon'],
                          color: black, size: 3.h),
                      SizedBox(width: 6.w),
                      Text(
                        "${accountButtons[index]['name']}",
                        style: AppTextStyles.small12,
                      )
                    ],
                  ),
                );
              })
        ],
      ),
    ));
  }
}
