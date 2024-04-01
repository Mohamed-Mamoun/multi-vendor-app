import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';

class RestuarentantTile extends StatelessWidget {
  const RestuarentantTile({super.key, this.restuarant});

  final dynamic restuarant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8.h),
            height: 70.h,
            width: width,
            decoration: BoxDecoration(
                color: kOffWhite, borderRadius: BorderRadius.circular(9.r)),
            child: Container(
              padding: EdgeInsets.all(4.r),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 70.h,
                          width: 70.w,
                          child: Image.network(
                            restuarant["imageUrl"],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            child: Container(
                              padding: EdgeInsets.only(left: 6.w, bottom: 2.h),
                              color: kGray.withOpacity(0.6),
                              height: 16.h,
                              width: width,
                              child: RatingBarIndicator(
                                itemBuilder: (context, i) {
                                  return const Icon(
                                    Icons.star,
                                    color: kSecondary,
                                  );
                                },
                                itemCount: 5,
                                rating: 5,
                                itemSize: 15.h,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: restuarant['title'],
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      ReusableText(
                        text: 'Delivery Time  ${restuarant['time']}',
                        fontSize: 11,
                        color: kGray,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(
                        width: width * 0.7,
                        child: ReusableText(
                          text: restuarant['coords']['address'],
                          fontSize: 9,
                          color: kGray,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
