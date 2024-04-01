import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multi_vendor/constants/uidata.dart';
import 'package:multi_vendor/views/Home/widgets/nearby_widget.dart';

class NearbyResList extends StatelessWidget {
  const NearbyResList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 194.h,
        padding: EdgeInsets.only(left: 12.w, top: 10.h),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
            restaurants.length,
            (i) {
              var resturent = restaurants[i];
              return Nearby_widget(
                  title: resturent['title'].toString(),
                  image: resturent['imageUrl'].toString(),
                  logo: resturent['logoUrl'].toString(),
                  rating: resturent['ratingCount'].toString(),
                  time: resturent['time'].toString());
            },
          ),
        ));
  }
}
