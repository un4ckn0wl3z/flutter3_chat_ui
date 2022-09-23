import 'package:flutter/material.dart';

import '../models/message_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300.0,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) {
            final Message chat = chats[index];

            return Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage(chat.sender.imageUrl),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(chat.sender.name),
                    Text(chat.text),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
