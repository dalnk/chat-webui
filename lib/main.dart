import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: 'chatAlpaca'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textController = TextEditingController();
  final List<String> _messages = [];

  void _handleSubmitted(String text) {
    setState(() {
      _messages.insert(0, text);
    });
    _textController.clear();
  }

  Widget _buildTextComposer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration:
                  InputDecoration.collapsed(hintText: 'ask me a question or type a message'),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: Icon(Icons.send),
              onPressed: () => _handleSubmitted(_textController.text),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageList() {
    return ListView.builder(
      padding: const EdgeInsets.all(8.0),
      reverse: true,
      itemCount: _messages.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(_messages[index]));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Flexible(child: _buildMessageList()),
          Divider(height: 1.0),
          Container(
            decoration:
                BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }
}