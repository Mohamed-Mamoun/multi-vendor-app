import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:multi_vendor/constants/constants.dart';
import 'package:multi_vendor/controllers/tab_index_controller.dart';
import 'package:multi_vendor/views/Cart/cart_view.dart';
import 'package:multi_vendor/views/Home/home_view.dart';
import 'package:multi_vendor/views/Profile/profile_view.dart';
import 'package:multi_vendor/views/Search/search_view.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomeView(),
    SearchView(),
    CartView(),
    ProfileView(),
    HomeView(),
  ];

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              Container(
                width: width,
                height: hieght,
                color: kOffWhite,
                child: pageList[controller.tabIndex],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                    data: Theme.of(context).copyWith(canvasColor: kPrimary),
                    child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      selectedIconTheme: const IconThemeData(color: kSecondary),
                      currentIndex: controller.tabIndex,
                      onTap: (value) {
                        controller.setIndex = value;
                      },
                      items: [
                        BottomNavigationBarItem(
                            icon: Icon(controller.tabIndex == 0
                                ? AntDesign.appstore1
                                : AntDesign.appstore_o),
                            label: ''),
                        const BottomNavigationBarItem(
                            icon: Icon(Icons.search), label: ''),
                        const BottomNavigationBarItem(
                            icon: Badge(
                                label: Text('2'),
                                child: Icon(Icons.shopping_cart)),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(controller.tabIndex == 3
                                ? FontAwesome.user_circle
                                : FontAwesome.user_circle_o),
                            label: '')
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
