import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/common/background_container.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';
import 'package:multi_vendor/constants/uidata.dart';
import 'package:multi_vendor/views/Home/widgets/restuarant_tile.dart';

class NearbyRestaurant extends StatelessWidget {
  const NearbyRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kOffWhite,
        elevation: 0.3,
        title: ReusableText(
          text: 'Nearby Restaurants',
          color: kGray,
          fontSize: 13,
        ),
      ),
      body: BackgroundContainer(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: List.generate(restaurants.length, (i) {
            var restuarant = restaurants[i];
            return RestuarentantTile(
              restuarant: restuarant,
            );
          }),
        ),
      )),
    );
  }
}
