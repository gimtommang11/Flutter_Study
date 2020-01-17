import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final themeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: themeColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //세로 주축 기준으로 가운데 정렬
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.png'),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'Sue',
                style: TextStyle(
                    fontFamily: 'LuckiestGuy',
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Web FrontEnd Developer',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20,
                    color: themeColor.shade100,
                    letterSpacing: 2.5, //자간
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  //나누는 선(horizental line) 추가하는 클래스 1px임
                  color: themeColor.shade100,
                ),
              ),
              Card(
                  //그림자, 둥근 모서리 등을 만들 수 있음 하지만 padding 불가
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      horizontal: 25.0,
                      vertical: 10.0), //상하 , 좌우 의 간격을 동일히 유지(대칭)
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: themeColor,
                    ),
                    title: Text(
                      '010 6416 6680',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: themeColor.shade900,
                      ),
                    ),
                  )),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  //리스트를 만드는 ListTile class 코드를 더욱 짧게 쓰기 위함.
                  leading: Icon(
                    //텍스트 앞에 오는 아이콘, 자동으로 margin이 생긴다
                    Icons.email,
                    color: themeColor,
                  ),
                  title: Text(
                    'gimtommang88@gmail.com',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: themeColor.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/* Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(25.5),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'gimtommang88@gmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 18,
                            color: Colors.teal.shade900,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )*/
