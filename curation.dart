import 'package:flutter/material.dart';

class CurationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '원룸 꿀팁',
          style: TextStyle(color: Colors.deepOrange), // 글씨 색상 deepOrange로 설정
        ),
        backgroundColor: Colors.grey, // 배경색 회색으로 설정
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '원룸 꿀팁',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                '이곳에 원룸 꿀팁의 내용을 추가할 수 있습니다.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            // 원룸 꿀팁 내용 추가
            ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text('조명 설치 팁'),
              subtitle: Text('원룸에서 조명을 설치하는 방법에 대한 팁입니다.'),
              onTap: () {
                // 조명 설치 팁을 클릭했을 때의 동작 추가
              },
            ),
            ListTile(
              leading: Icon(Icons.lightbulb),
              title: Text('가구 배치 팁'),
              subtitle: Text('원룸 내 가구를 효율적으로 배치하는 방법에 대한 팁입니다.'),
              onTap: () {
                // 가구 배치 팁을 클릭했을 때의 동작 추가
              },
            ),
            // 추가적인 꿀팁 항목들을 ListTile 형태로 계속 추가할 수 있습니다.
          ],
        ),
      ),
    );
  }
}
