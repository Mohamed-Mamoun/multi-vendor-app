import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';

class Nearby_widget extends StatelessWidget {
  const Nearby_widget(
      {super.key,
      required this.title,
      required this.image,
      required this.logo,
      required this.rating,
      required this.time,
      this.onTap});

  final String title;
  final String image;
  final String logo;
  final String rating;
  final String time;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * .75,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                        width: width * 0.8,
                        child: Image.network(
                          image,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      right: 10.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Container(
                          color: kLightWhite,
                          child: Padding(
                            padding: EdgeInsets.all(2.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.w),
                              child: Image.network(
                                logo,
                                fit: BoxFit.cover,
                                width: 20.w,
                                height: 20.h,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      text: title,
                      fontSize: 12,
                      color: kDark,
                      fontWeight: FontWeight.w500,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: 'Delivery Time',
                          fontSize: 9,
                          color: kDark,
                          fontWeight: FontWeight.w500,
                        ),
                        ReusableText(
                          text: time,
                          fontSize: 9,
                          color: kDark,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          itemBuilder: (context, i) {
                            return const Icon(
                              Icons.star,
                              color: kPrimary,
                            );
                          },
                          itemCount: 5,
                          rating: 5,
                          itemSize: 15.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        ReusableText(
                          text: '${rating} + reviews and rating',
                          fontSize: 9,
                          color: kGray,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
