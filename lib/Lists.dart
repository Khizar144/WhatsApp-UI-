// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/model/user_model.dart';

class Chatlist extends StatefulWidget {
  const Chatlist({super.key});

  @override
  State<Chatlist> createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  List muslimNames = [
    'Muhammad',
    'Aisha',
    'Ali',
    'Fatima',
    'Omar',
    'Khadijah',
    'Hassan',
    'Zainab',
    'Ahmed',
    'Maryam',
    'Ibrahim',
    'Safia',
    'Yusuf',
    'Layla',
    'Mustafa',
    'Sana',
    'Abdullah',
    'Nadia',
    'Omar',
    'Leila',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Chat List"),
        ),
        body: ListView.builder(
          itemCount: User.userList.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(User.userList[index].name),
            subtitle: Text(User.userList[index].lastSeen),
          ),
          // children: muslimNames.map((value) {
          //   return ListTile(
          //     leading: CircleAvatar(
          //         radius: 30,
          //         backgroundImage: NetworkImage(
          //             "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")),
          //     title: Text(value.toString(),),
          //     subtitle: Text("44 minutes ago"),
          //     // trailing: Text("6:35 PM"),
          //   );
          // }).toList(),
        ));
  }
}
