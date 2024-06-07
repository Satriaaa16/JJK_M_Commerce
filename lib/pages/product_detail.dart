import 'package:e_commerce_awal/widget/support_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 251, 251),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 50.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_back_ios_new_outlined)),
                ),
                Center(
                    child: Image.asset(
                  "images/category/sukuna.png",
                  height: 400,
                ))
              ]),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Gojo Figure",
                            style: AppWidget.boldTextFeildStyle(),
                          ),
                          Text("\$Rp 1000",
                              style: TextStyle(
                                  color: Color.fromARGB(171, 7, 81, 218),
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Detail",
                        style: AppWidget.semiboldTextFeildStye(),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                          "Mempercantik ruangan dengan dekorasi anime yang keren Menunjukkan kecintaan Anda pada Jujutsu Kaisen dan Gojo Satoru Menjadi koleksi berharga bagi para penggemar anime Hadiah yang sempurna untuk pecinta Jujutsu Kaisen"),
                      SizedBox(
                        height: 90.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0), // Adjusted padding
                        decoration: BoxDecoration(
                            color: Color.fromARGB(171, 7, 81, 218),
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Beli ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0, // Adjust if needed
                              fontWeight: FontWeight.bold,
                              // Set leading to 0.0 if necessary
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
