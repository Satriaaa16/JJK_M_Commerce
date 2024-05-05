import 'dart:ui';

import 'package:e_commerce_awal/widget/support_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List kategori = [
    "images/category/Yuji.png",
    "images/category/Gojo.png",
    "images/category/Yuta.png",
    "images/category/Megumi.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 73, 73),
        body: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "haii alan",
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                      Text("Selamat Pagii",
                          style: AppWidget.lightTextFeildStyle()),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "images/Meavolent.jpg",
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 231, 235),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Cari Teknik",
                      hintStyle: AppWidget.lightTextFeildStyle(),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.redAccent,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Kategori",
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                  Text("Lihat Semua",
                      style: TextStyle(
                          color: Color.fromARGB(171, 7, 81, 218),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                      height: 130,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(right: 20.0),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 39, 164, 236),
                          borderRadius: BorderRadius.circular(10)),
                      width: 90,
                      child: Center(
                        child: Text("Semua",
                            style: TextStyle(
                                color: Color.fromARGB(255, 236, 237, 240),
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold)),
                      )),
                  Expanded(
                    child: Container(
                      height: 140,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: kategori.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return KategoriTile(image: kategori[index]);
                          }),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " Produk Kami",
                    style: AppWidget.boldTextFeildStyle(),
                  ),
                  Text("Lihat",
                      style: TextStyle(
                          color: Color.fromARGB(171, 7, 81, 218),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/category/Panda.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Panda",
                            style: AppWidget.semiboldTextFeildStye(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6f3e),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/category/Todo.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Todo",
                            style: AppWidget.semiboldTextFeildStye(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6f3e),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Image.asset(
                            "images/category/Maki.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Maki",
                            style: AppWidget.semiboldTextFeildStye(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                    color: Color(0xFFfd6f3e),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 50.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color(0xFFfd6f3e),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class KategoriTile extends StatelessWidget {
  String image;
  KategoriTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 90,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, height: 50, width: 50, fit: BoxFit.cover),
          SizedBox(
            height: 10.0,
          ),
          Icon(Icons.arrow_forward)
        ],
      ),
    );
  }
}
