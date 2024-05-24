import 'package:flutter/material.dart';
import 'package:sdb2/profile.dart';
import 'home.dart';
import 'find.dart';
import 'bookmark.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    HomeTab(),
    FindTab(),
    BookmarkTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // 앱바의 세로 길이 설정
        child: AppBar(
          backgroundColor: Colors.white, // 앱바 색상을 하얀색으로 변경
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                '순덕방',
                style: TextStyle(
                  color: Colors.deepOrange, // 주황색 글씨체로 설정
                  fontWeight: FontWeight.bold, // 굵은 글씨체로 설정
                  fontSize: 20,
                ),
              ),
              Text(
                '순천대학교',
                style: TextStyle(
                  color: Colors.deepOrange, // 주황색 글씨체로 설정
                  fontSize: 16,
                ),
              ),
            ],
          ),
          actions: [
            SizedBox(width: 30), // 프로필 아이콘 우측 공간
            IconButton(
              icon: Icon(Icons.account_circle), // 프로필 모양의 아이콘
              color: Colors.grey, // 아이콘 색상을 회색으로 변경
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()), // profile.dart 페이지로 이동
                );
                // 프로필 버튼이 눌렸을 때 동작
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(10), // 아이콘과 텍스트 사이의 간격 조절
            child: SizedBox.shrink(), // 하단 공간을 제거하여 아이콘과 텍스트를 아래로 내림
          ),
        ),
      ),
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '원룸 찾기',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: '즐겨찾기',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
