import 'package:flutter/material.dart';

class CustomerCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          '고객센터',
          style: TextStyle(
            color: Colors.deepOrange, //   타이틀 텍스트 색상을 deepOrange로 설정
          ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.headset_mic,
              size: 100,
              color: Colors.deepOrange,
            ),
            SizedBox(height: 20),
            Text(
              '문의 전화: 010-6716-6030',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '이메일: 20194401@scnu.ac.kr',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
