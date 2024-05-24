import 'package:flutter/material.dart';

class CEOPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          '사장님 바로가기',
          style: TextStyle(
            color: Colors.deepOrange, // 타이틀 텍스트 색상을 deepOrange로 설정
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.business_center,
              size: 100,
              color: Colors.deepOrange,
            ),
            SizedBox(height: 20),
            Text(
              '사장님 전용 서비스',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '사장님을 위한 특별한 서비스를 제공합니다.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
