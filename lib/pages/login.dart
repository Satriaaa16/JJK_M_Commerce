import 'package:e_commerce_awal/pages/home.dart';
import 'package:e_commerce_awal/pages/signup.dart';
import 'package:e_commerce_awal/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0, bottom: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/sukuna.png"),
              Center(
                child: Text(
                  "Login",
                  style: AppWidget.semiboldTextFeildStye(),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "masukan akun dan sandi anda\n          dibawah ini",
                  style: AppWidget.lightTextFeildStyle(),
                ),
              ),
              Text(
                "Email",
                style: AppWidget.semiboldTextFeildStye(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Color(0xfff4f5f9),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Email"),
                ),
              ),
              Text(
                "Sandi",
                style: AppWidget.semiboldTextFeildStye(),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Color(0xfff4f5f9),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Sandi"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 172, 51, 20),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Text(
                  "Belum Punya akun ? ",
                  style: AppWidget.lightTextFeildStyle(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Signup()));
                  },
                  child: Text(
                    "Daftar",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
