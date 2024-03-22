import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../../constant/utils/colors.dart';
import '../../../../../constant/utils/textStyles.dart';

class MoreWaysToUber extends StatelessWidget {
  const MoreWaysToUber(
      {super.key, required this.moreWaysToUber, required this.title});

  final List moreWaysToUber;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.body14Bold,
        ),
        SizedBox(height: 1.h),
        SizedBox(
          height: 20.h,
          child: ListView.builder(
              itemCount: moreWaysToUber.length,
              shrinkWrap: true,
              primary: false,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(
                      left: index == 0 ? 0 : 1.5.w,
                      right: index == (moreWaysToUber.length - 1) ? 0 : 1.5.w),
                  height: 18.h,
                  width: 65.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 15.h,
                        width: 65.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.sp),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "${moreWaysToUber[index]['image']}"))),
                      ),
                      Row(
                        children: [
                          Text("${moreWaysToUber[index]['title']}",
                              style: AppTextStyles.small12Bold),
                          SizedBox(width: 3.w),
                          Icon(Icons.arrow_forward, size: 2.h, color: black87)
                        ],
                      ),
                      Text("${moreWaysToUber[index]['sub_title']}",
                          style: AppTextStyles.small10Bold
                              .copyWith(color: black87)),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
