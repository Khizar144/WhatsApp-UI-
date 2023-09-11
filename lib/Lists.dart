// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/model/user_model.dart';

class Chatlist extends StatefulWidget {
  const Chatlist({super.key});

  @override
  State<Chatlist> createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: User.userList.length,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: ClipOval(child: 
          FadeInImage.assetNetwork(placeholder:, image: image)
          ),
          //backgroundImage: NetworkImage(User.userList[index].img),
        ),
        title: Text(User.userList[index].name),
        subtitle: Text(User.userList[index].lastSeen),
        trailing: Text("2:30 PM"),
      ),
    );
  }
}
