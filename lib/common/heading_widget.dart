import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';

class Heading extends StatelessWidget {
  const Heading({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableText(
            text: text,
            fontSize: 16,
            color: kDark,
            fontWeight: FontWeight.bold,
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                AntDesign.appstore1,
                color: kSecondary,
                size: 20.r,
              ))
        ],
      ),
    );
  }
}
