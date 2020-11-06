import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

//変更したよ

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'YouTubeアプリ',
          ),
          actions: [
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.search),
                onPressed: () {
                  // todo
                },
              ),
            ),
            SizedBox(
              width: 44,
              child: FlatButton(
                child: Icon(Icons.more_vert),
                onPressed: () {
                  // todo
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                          'https://pbs.twimg.com/tweet_video_thumb/D62oEDsWsAEJkCp.jpg'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text('Youtube'),
                        FlatButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text('登録する')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(
                          'https://pbs.twimg.com/tweet_video_thumb/D62oEDsWsAEJkCp.jpg'),
                      title: Text('Flutter入門'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
