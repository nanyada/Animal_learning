import 'package:flutter/material.dart';

class DescriptionSection extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
          "ชื่อสัตว์ปีกจำพวกนก มีหลายวงศ์บินได้ระยะสั้น มีเหนียง ๒ ข้างห้อยลงมาตรงโคนปาก และคาง ตัวผู้หงอนใหญ่ และเดือยยาว มีหลายชนิด",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Icon(Icons.timer,
              color: Color(0xFF674AEF),
              ),
              SizedBox(height: 5,),
              Text(
              "5 Minut",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              )
            ],
          )
        ],
      ),
    );
  }
}