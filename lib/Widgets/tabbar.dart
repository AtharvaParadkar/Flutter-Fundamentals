import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(icon: Icon(Icons.chat), text: 'Chats'),
              Tab(icon: Icon(CupertinoIcons.circle_grid_3x3), text: 'Status'),
              Tab(icon: Icon(Icons.groups_3_outlined), text: 'Groups'),
              Tab(icon: Icon(Icons.call), text: 'Calls')
            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(child: Text('Chats', style: TextStyle(fontSize: 40))),
          Center(child: Text('Status', style: TextStyle(fontSize: 40))),
          Center(child: Text('Groups', style: TextStyle(fontSize: 40))),
          Center(child: Text('Calls', style: TextStyle(fontSize: 40))),
        ]),
      ),
    );
  }
}
