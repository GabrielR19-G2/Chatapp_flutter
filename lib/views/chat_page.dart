import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/cupertino.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isWriting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueAccent[100],
              child: Text('Te', style: TextStyle(fontSize: 12)),
              maxRadius: 14,
            ),
            SizedBox(height: 3),
            Text(
              'Melissa Flores',
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 1,
      ),
      body: Container(
        child: Column(
          children: [
            // widget que sea capaz de expandirse
            Flexible(
              child: ListView.builder(
                reverse: true,
                physics: BouncingScrollPhysics(),
                // itemCount: 10,
                itemBuilder: (_, int index) {
                  return Text('Index: $index');
                },
              ),
            ),
            Divider(height: 1),
            // TODO: Caja de texto
            Container(color: Colors.white, child: _inputChat()),
          ],
        ),
      ),
    );
  }

  Widget _inputChat() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _controller,
                onSubmitted: _handleSubmit,
                onChanged: (text) {
                  // Cuando hay un valor, para poder postear
                  setState(() {
                    if (text.trim().length > 0) {
                      _isWriting = true;
                    } else {
                      _isWriting = false;
                    }
                  });
                },
                decoration: InputDecoration.collapsed(hintText: 'Enviar msg'),
                focusNode: _focusNode,
              ),
            ),
            // boton de enviar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: Platform.isIOS
                  ? CupertinoButton(
                      child: Text('Enviar'),
                      onPressed: _isWriting
                          ? () => _handleSubmit(_controller.text.trim())
                          : null,
                    )
                  : Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      child: IconTheme(
                        data: IconThemeData(color: Colors.blue[400]),
                        child: IconButton(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onPressed: _isWriting
                              ? () => _handleSubmit(_controller.text.trim())
                              : null,
                          icon: Icon(Icons.send),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  _handleSubmit(String text) {
    print(text);
    _controller.clear();
    _focusNode.requestFocus();

    setState(() {
      _isWriting = false;
    });
  }
}
