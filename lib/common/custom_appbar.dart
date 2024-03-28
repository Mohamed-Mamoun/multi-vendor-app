import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      padding: EdgeInsets.fromLTRB(10.w, 40.h, 10.w, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 80.h,
                width: 80.w,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/profile.png',
                      ),
                    )),
              ),
              SizedBox(
                width: 5.w,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 25.h,
                  ),
                  ReusableText(
                    text: 'Deliver To',
                    color: kSecondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  ReusableText(
                    text: 'Location',
                    color: kGray,
                  ),
                ],
              ),
            ],
          ),
          ReusableText(
            text: showDateImage(),
            fontSize: 35,
          )
        ],
      ),
    );
  }

  // ⟹ Time Emoji Function
  showDateImage() {
    int time = DateTime.now().hour;

    if (time >= 0 && time > 12) {
      return ' ❄ ';
    } else if (time >= 12 && time < 16) {
      return ' ⛅ ';
    } else {
      return ' 🌙 ';
    }
  }
}
