import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor/common/custom_appbar.dart';
import 'package:multi_vendor/common/custom_container.dart';
import 'package:multi_vendor/common/heading_widget.dart';
import 'package:multi_vendor/views/Home/Nearby_resturent.dart';
import 'package:multi_vendor/views/Home/fastest_food.dart';
import 'package:multi_vendor/views/Home/recommindation.dart';
import 'package:multi_vendor/views/Home/widgets/category_list.dart';
import 'package:multi_vendor/views/Home/widgets/food_list.dart';
import 'package:multi_vendor/views/Home/widgets/nearby_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: SizedBox(
          height: 130.h,
          child: const CustomAppbar(),
        ),
      ),
      body: SafeArea(
          child: CustomContainer(
              containerContent: Column(
        children: [
          const CategoryList(),
          Heading(
            text: 'Nearby Resturant',
            onPressed: () {
              Get.to(() => const NearbyRestaurant(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 900));
            },
          ),
          const NearbyResList(),
          Heading(
            text: 'Try Somthing New',
            onPressed: () {
              Get.to(() => const Recommendations(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 900));
            },
          ),
          const FoodList(),
          Heading(
            text: 'Food Closer To you',
            onPressed: () {
              Get.to(() => const FastestFood(),
                  transition: Transition.cupertino,
                  duration: const Duration(milliseconds: 900));
            },
          ),
          const FoodList(),
        ],
      ))),
    );
  }
}
