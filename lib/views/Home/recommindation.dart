import 'package:flutter/material.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kOffWhite,
        elevation: 0.3,
        title: ReusableText(
          text: 'Recommendations',
          color: kGray,
          fontSize: 13,
        ),
      ),
    );
  }
}
