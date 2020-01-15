import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white),
        home: RandomWords());
  }
}

class RandomWordsState extends State<RandomWords> {
  //제네릭 형태, Random... 의 상태를 유지한다고. redux같은 느낌
  final List<WordPair> _suggestions =
      <WordPair>[]; // _(underscore)는 private하게 만들어 주는 역할이다
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);
  final Set<WordPair> _saved =
      Set<WordPair>(); //set: 중복 허용을 하지 않는 리스트 _saved는 사용자가 좋아요 표시한 단어들.
  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map((WordPair pair) {
            return ListTile(
              title: Text(
                pair.asPascalCase,
                style: _biggerFont,
              ),
            );
          });
          final List<Widget> divided =
              ListTile.divideTiles(context: context, tiles: tiles).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('saved suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        //builder: 스크롤할 수 있는 위젯 선형 배열을 만든다.
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext _context, int i) {
          //itemBuilder:
          if (i.isOdd) {
            //isOdd property
            return Divider();
          }
          final int index = i ~/ 2; //나머지를 버리는 연산자
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved =
        _saved.contains(pair); //해당 글자가 _saved에 있다면 true를  반환
    return ListTile(
      //ListTile :앱 리스트를 구성하고 그 안의 페딩이나 위치를 자동으로 예쁘게 해준다
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('startup name Generator'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: _pushSaved,
          ),
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget {
  //stateful component같은 statefulWidget, react의 container component같은 느낌
  @override
  RandomWordsState createState() => RandomWordsState();
  //createState: 트리 적정 위치에 state를 추가해줌.
}
