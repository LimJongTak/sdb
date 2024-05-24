import 'package:flutter/material.dart';
import 'package:sdb2/home.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,), // 뒤로 가기 아이콘
          onPressed: () {
            Navigator.pop(context); // 이전  화면으로 이동
          },
        ),
        title: Text(
          '내 정보',
          style: TextStyle(
            color: Colors.black, // 검정색 글씨체
            fontWeight: FontWeight.bold, // 굵은 글씨체
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile_image.png'), // 프로필 이미지 설정
          ),
          SizedBox(height: 10),
          Text(
            '임종탁', // 이름
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '국립순천대학교', // 대학교명
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          Divider(thickness: 1),
          ListTile(
            leading: Icon(Icons.lock), // 자물쇠 아이콘
            title: Text('비밀번호 변경'),
            onTap: () {
              // 비밀번호 변경 기능 구현
            },
          ),
          ListTile(
            leading: Icon(Icons.school), // 학사모 아이콘
            title: Text('학교 변경'),
            onTap: () {
              // 학교 변경 기능 구현
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications), // 확성기 아이콘
            title: Text('공지사항'),
            onTap: () {
              // 공지사항 기능 구현
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment), // 약관 동의 아이콘
            title: Text('약관 및 정책'),
            onTap: () {
              // 약관 및 정책 화면으로 이동하는 기능 구현
            },
          ),
        ],
      ),
    );
  }
}
