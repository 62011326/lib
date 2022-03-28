import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:loginstem/screen/login.dart';
import 'package:loginstem/screen/register.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: Column(
          children: [
            Image.asset("assets/images/logosia.png"),
            Text("ยินดีต้อนรับเข้าสู่", style: TextStyle(fontSize: 30)),
            Text("SIA E-AUCTION SYSTEM", style: TextStyle(fontSize: 25)),
            Text("     ใช้งานได้บนคอมพิวเตอร์,โน๊ตบุ๊ค,มือถือ",
                style: TextStyle(fontSize: 20)),
            Text("     Android ผ่าน Browser Chrome",
                style: TextStyle(fontSize: 20)),
            Text(
              "     ",
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.add),
                label: Text("สร้างบัญชีผู้ใช้", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon( 
                icon: Icon(Icons.add),
                label: Text("เข้าสู่ระบบ", style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.login),
                label: Text("ดูรายการสินค้า", style: TextStyle(fontSize: 20)),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: Icon(Icons.login),
                label: Text("ระบบฝากราคา", style: TextStyle(fontSize: 20)),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
