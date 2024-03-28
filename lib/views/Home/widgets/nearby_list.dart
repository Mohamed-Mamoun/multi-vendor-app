import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/constants/constants.dart';
import 'package:multi_vendor/constants/uidata.dart';

class NearbyResList extends StatelessWidget {
  const NearbyResList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210.h,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            restaurants.length,
            (i) {
              var resturent = restaurants[i];
              return Container(
                height: 100,
                width: 50,
                color: kSecondary,
              );
            },
          ),
        ));
  }
}
