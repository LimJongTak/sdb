import 'package:flutter/material.dart';
import 'package:sdb2/ceo.dart';
import 'curation.dart';
import 'customer.dart';
import 'find.dart'; // 원룸 찾기 페이지 import
import 'bookmark.dart'; // 즐겨찾기 페이지 import

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 원룸 찾기와 즐겨찾기로 이동하는  버튼
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 첫 번째 버튼: 원룸 찾기
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FindTab()), // 원룸 찾기 페이지로 이동
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // 배경색 설정
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 테두리 둥글기 설정
                  side: BorderSide(color: Colors.grey), // 테두리 선 색상 및 두께 설정
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // 내부 padding 설정
              ),
              child: Row(
                children: [
                  Icon(Icons.search, size: 30, color: Colors.deepOrange), // 아이콘
                  SizedBox(width: 10), // 아이콘과 텍스트 사이 간격
                  Text(
                    '원룸 찾기',
                    style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                  ), // 텍스트
                ],
              ),
            ),
            SizedBox(width: 10), // 첫 번째 버튼과 두 번째 버튼 사이 공간 설정
            // 두 번째 버튼: 즐겨찾기
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookmarkTab()), // 즐겨찾기 페이지로 이동
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // 배경색 설정
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // 테두리 둥글기 설정
                  side: BorderSide(color: Colors.grey), // 테두리 선 색상 및 두께 설정
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // 내부 padding 설정
              ),
              child: Row(
                children: [
                  Icon(Icons.star, size: 30, color: Colors.deepOrange), // 아이콘
                  SizedBox(width: 10), // 아이콘과 텍스트 사이 간격
                  Text(
                    '즐겨찾기',
                    style: TextStyle(fontSize: 18, color: Colors.deepOrange),
                  ), // 텍스트
                ],
              ),
            ),
          ],
        ),


        SizedBox(height: 16), // 버튼과 내용 사이 간격

        SizedBox(height: 20), // 광고 배너와 원룸 꿀팁 사이 간격

        // 모서리가 둥근 네모 이미지와 이미지를 넘길 수 있는 화살표
        Container(
          height: 130, // 광고 배너의 높이 설정
          child: Stack(
            children: [
              // 이미지 슬라이더
              PageView(
                children: [
                  // 각 이미지를 넣어줄 컨테이너를 PageView의 자식으로 넣어줍니다.
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Text(
                        'AD BANNER',
                        style: TextStyle(fontSize: 24, color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Text(
                        'AD BANNER',
                        style: TextStyle(fontSize: 24, color: Colors.grey[500]),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[300],
                    ),
                    child: Center(
                      child: Text(
                        'AD BANNER',
                        style: TextStyle(fontSize: 24, color: Colors.grey[500]),
                      ),
                    ),
                  ),
                ],
              ),
              // 왼쪽으로 넘기는 화살표
              Positioned(
                left: 5,
                top: 40,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.grey[500],
                  onPressed: () {
                    // 왼쪽 화살표 눌렀을 때 동작
                  },
                ),
              ),
              // 오른쪽으로 넘기는 화살표
              Positioned(
                right: 3,
                top: 40,
                child: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  color: Colors.grey[500],
                  onPressed: () {
                    // 오른쪽 화살표 눌렀을 때 동작
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // 광고 배너와 원룸 꿀팁란 사이 간격

        // 원룸 꿀팁란
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '원룸 꿀팁',
                    style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CurationTab()), // CurationTab으로 이동
                      );
                    },

                    child: Text(
                      '더보기 >',
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              // 원룸 꿀팁 이미지 슬라이더
              Container(
                height: 150, // 원룸 꿀팁 이미지 슬라이더의 높이 설정
                child: ListView(
                  scrollDirection: Axis.horizontal, // 가로로 스크롤 가능하도록 설정
                  children: [
                    // 각 이미지를 넣어줄 컨테이너를 ListView의 자식으로 넣어줍니다.
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 150, // 각 이미지의 너비 설정
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          'Image' ,
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 150, // 각 이미지의 너비 설정
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          'Image',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 150, // 각 이미지의 너비 설정
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Center(
                        child: Text(
                          'Image',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20), // 원룸 꿀팁란과 바로가기 사이 간격

        // 바로가기
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '바로가기',
                style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ButtonBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CustomerCenterPage()), // 고객센터 페이지로 이동
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200], // 연한 회색 배경색
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // 모서리 둥글게 처리
                      ),
                      minimumSize: Size(150, 50), // 가로 길이를 30씩 늘림
                    ),
                    child: Text('고객센터',
                      style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CEOPage()), // 고객센터 페이지로 이동
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200], // 연한 회색 배경색
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // 모서리 둥글게 처리
                      ),
                      minimumSize: Size(150, 50), // 가로 길이를 30씩 늘림
                    ),
                    child: Text('사장님 바로가기',
                      style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('순덕방'),
        ),
        body: HomeTab(),
      ),
    );
  }
}
