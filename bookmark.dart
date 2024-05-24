import 'package:flutter/material.dart';
import 'main.dart'; // main.dart를 import합니다.

class BookmarkTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // 배경색을 흰색으로 설정
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // 가운데 정렬로 변경합니다.
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 16, left: 8, right: 8), // 상단 여백을 20만큼 주고 좌우 여백은 8만큼 줍니다.
              child: Text(
                '즐겨찾기 원룸 리스트',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(thickness: 1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage())); // 홈탭으로 이동
        },
        child: Icon(Icons.home),
        foregroundColor: Colors.white, // 아이콘 색상 설정
        backgroundColor: Colors.deepOrange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
