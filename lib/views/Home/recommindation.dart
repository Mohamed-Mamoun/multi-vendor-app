import 'package:flutter/material.dart';
import 'package:multi_vendor/common/background_container.dart';
import 'package:multi_vendor/common/reusable_text.dart';
import 'package:multi_vendor/constants/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondary,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: kSecondary,
          elevation: 0.3,
          title: ReusableText(
            text: 'Recommendations',
            color: Colors.white,
            fontSize: 13,
          ),
        ),
        body: BackgroundContainer(child: Container()));
  }
}
