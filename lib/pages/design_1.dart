// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Design1 extends StatelessWidget {
  const Design1({super.key});

  @override
  Widget build(BuildContext context) {
    const String svgString = 'images/Girl.svg';
    const String svgFacebook = 'images/facebook.svg';
    const String svgGoogle = 'images/google-icon.svg';

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              "Selamat",
              style: const TextStyle(
                  color: Color(0xFF86B049),
                  fontFamily: 'Montserrat',
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SvgPicture.asset(
            svgString,
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: ""),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Daftar",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: 160,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Color(0xFF6EBC67)),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Mempunyai akaun? "),
              Text(
                "Daftar Masuk",
                style: TextStyle(color: Color(0xFF6EBC67)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("atau daftar dengan"),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 1,
                  width: 100,
                  color: Colors.black,
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgFacebook),
              SizedBox(width: 20,),
              SvgPicture.asset(svgGoogle),
            ],
          )
        ],
      ),
    );
  }
}
