import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';
import 'package:multi_vendor/constants/uidata.dart';
import 'package:multi_vendor/controllers/category_controller.dart';
import 'package:multi_vendor/views/Home/widgets/all_categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CategoryController());
    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(categories.length, (index) {
          var category = categories[index];
          return GestureDetector(
              onTap: () {
                if (controller.categoryValue == category['_id']) {
                  controller.updateCategory = '';
                  controller.updateTilte = '';
                } else if (category['value'] == 'more') {
                  Get.to(() => const AllCategories(),
                      transition: Transition.fadeIn,
                      duration: const Duration(microseconds: 900));
                } else {
                  controller.updateCategory = category['_id'];
                  controller.updateTilte = category['title'];
                }
              },
              child: Obx(
                () => Container(
                  margin: EdgeInsets.only(right: 5.w),
                  padding: EdgeInsets.only(top: 5.h),
                  width: width * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          color: controller.categoryValue == category['_id']
                              ? kSecondary
                              : kOffWhite,
                          width: .9.w)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                        child: Image.asset(
                          category['imageUrl'],
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      ReusableText(
                        text: category['title'],
                        fontSize: 13,
                      )
                    ],
                  ),
                ),
              ));
        }),
      ),
    );
  }
}
