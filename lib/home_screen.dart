// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/Lists.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("New Group"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("Settings"),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Text("Logout"),
                          value: 3,
                        ),
                      ])
            ],
            title: Text("WhatsApp"),
            bottom: TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Chatlist(),
            // Chats
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")),
                      title: Text(
                        "Dummy Data",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Row(
                        children: [Icon(Icons.check), Text(" Hi How are you?")],
                      ),
                      trailing: Text("6:35 PM"),
                    ),
                  );
                }),
            // status tab
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //my Status
                ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60")),
                    title: Text(
                      "Dummy Data",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Text("44 minutes ago"),
                    trailing: Icon(Icons.more_horiz_outlined),
                    iconColor: Colors.teal),
                //new Status
                Text(
                  "    New Status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")),
                            title: Text(
                              "Dummy Data",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            subtitle: Text("44 minutes ago"),
                            // trailing: Text("6:35 PM"),
                          ),
                        );
                      }),
                ),
              ],
            ),
            // calls tab
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60")),
                      title: Text(
                        "Dummy Data",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Row(children: [
                        Transform.rotate(
                            angle: 186,
                            child: Icon(Icons.arrow_downward_outlined)),
                        Text(" 44 minutes ago")
                      ]),
                      trailing: Icon(Icons.phone),
                    ),
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
