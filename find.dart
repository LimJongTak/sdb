import 'package:flutter/material.dart';

import 'main.dart';

class FindTab extends StatefulWidget {
  @override
  _FindTabState createState() => _FindTabState();
}

class _FindTabState extends State<FindTab> {
  String _searchText = '';
  int _selectedIndex = 0; // 선택된 버튼 인덱스

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _searchText = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: '검색어를 입력하세요',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0; // 전체 버튼이 선택됨
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: _selectedIndex == 0 ? Colors.deepOrange : Colors.grey[500], // 배경색 설정
                  onPrimary: Colors.white, // 글자색 설정
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: Text('전체'),
              ),
              ElevatedButton(
                onPressed: ()   {
                  setState(() {
                    _selectedIndex = 1; // 거리순 버튼이 선택됨
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: _selectedIndex == 1 ? Colors.deepOrange : Colors.grey[500], // 배경색 설정
                  onPrimary: Colors.white, // 글자색 설정
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: Text('거리순'),
              ),
            ],
          ),
          // 여기에 나머지 내용 추가
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage())); // 홈탭으로 이동
        },
        child: Icon(Icons.home),
        foregroundColor: Colors.white, // 아이콘 색상 설정
        backgroundColor: Colors.deepOrange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // 우측하단에 위치하도록 설정

    );
  }
}
