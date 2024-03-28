import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: 1500,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.topRight,
                height: 280,
                width: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVi-X7msvfPFGQSta4F588jYeJFfVTsp_V8Q&usqp=CAU')),
                ),
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.fromLTRB(40, 10, 7, 0),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade700,
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 25,
                        )),
                    SizedBox(
                      height: 160,
                    ),
                    Container(
                        width: 80,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.image,
                              color: Colors.white,
                              size: 25,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1/1',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'primary'),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 37,
                  ),
                  Text(
                    " \$ 10,000               ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontFamily: 'primary'),
                  ),
                ],
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                '''                                                         للبيع 
                                        ... شقة مفروشة''',
                style: TextStyle(fontSize: 22, fontFamily: 'primary'),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        backgroundColor: Colors.blue.shade900),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "09108777XX",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'primary',
                              fontSize: 22),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 31,
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.blue.shade900, width: 1.4),
                      borderRadius: BorderRadius.circular(8)),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "دردش",
                            style: TextStyle(
                                color: Colors.blue.shade900,
                                fontFamily: 'primary',
                                fontSize: 22),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.chat,
                            color: Colors.blue.shade900,
                            size: 31,
                          )
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //
              //
              //
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 5),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          borderRadius: BorderRadius.circular(8)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "شارك الاعلان",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'primary',
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 25,
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 20),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1.2),
                          borderRadius: BorderRadius.circular(8)),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "اضف الاعلان",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'primary',
                                    fontSize: 20),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                CupertinoIcons.heart,
                                color: Colors.red,
                                size: 25,
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "                                            عطبرة, نهر النيل ",
                    style: TextStyle(fontFamily: 'primary', fontSize: 20),
                  ),
                  Icon(Icons.location_on)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                thickness: 5,
                color: Colors.grey.shade300,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "                                             المعلومات  ",
                style: TextStyle(fontFamily: 'primary', fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade300),
                child: Row(
                  children: [
                    Text(
                      "                     النوع                               شقة  ",
                      style: TextStyle(fontFamily: 'primary', fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Row(
                  children: [
                    Text(
                      "                   الفئة                               عقارات  ",
                      style: TextStyle(fontFamily: 'primary', fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
