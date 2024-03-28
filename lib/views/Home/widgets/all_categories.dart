import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/common/background_container.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';
import 'package:multi_vendor/constants/uidata.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: kOffWhite,
          title: ReusableText(
            text: 'Categories',
            fontSize: 13,
            color: kGray,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: BackgroundContainer(
          child: Container(
            height: hieght,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(categories.length, (i) {
                var category = categories[i];
                return ListTile(
                  leading: CircleAvatar(
                    radius: 18.r,
                    backgroundColor: kOffWhite,
                    child: Image.asset(
                      category['imageUrl'],
                      fit: BoxFit.contain,
                    ),
                  ),
                  title: ReusableText(
                    text: category['title'],
                    fontSize: 13,
                    color: kGray,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: kGray,
                      size: 15.r,
                    ),
                  ),
                );
              }),
            ),
          ),
        ));
  }
}
