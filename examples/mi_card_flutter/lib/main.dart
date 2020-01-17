import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/me.png'),
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
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5, //자간
                    fontWeight: FontWeight.bold),
              ),
              Card(
                //그림자, 둥근 모서리 등을 만들 수 있음 하지만 padding 불가
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0), //상하 , 좌우 의 간격을 동일히 유지(대칭)
                child: Padding(
                  //Card class가 padding 을 못 넣어서 padding 클래스로 넣어줌
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        //아이콘과 텍스트 간격을 벌이기 위함
                        width: 10,
                      ),
                      Text(
                        '010 6416 6680',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro',
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  //리스트를 만드는 ListTile class 코드를 더욱 짧게 쓰기 위함.
                  leading: Icon(
                    //텍스트 앞에 오는 아이콘, 자동으로 margin이 생긴다
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'gimtommang88@gmail.com',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: Colors.teal.shade900,
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
