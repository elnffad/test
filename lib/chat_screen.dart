import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final image;
  final title;
  final message;

  ChatScreen(
      {@required this.image, @required this.title, @required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(1.0),
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            title: Text(title),
            subtitle: Text(message),
            trailing: Column(
              children: [
                Text("12.00pm"),
                Container(
                  width: 30,
                  child: CircleAvatar(
                    child: Text('7'),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
