import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  // color: Colors.yellowAccent,
                  padding: const EdgeInsets.all(5),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 37,
                        // backgroundImage: NetworkImage('https://media.gettyimages.com/id/531719992/photo/hands-of-stone-photocall-the-69th-annual-cannes-film-festival.jpg?s=1024x1024&w=gi&k=20&c=Z5por8yKcv-swYUkpYEv0K4PYfU56NS8qlIGSozEerg='),
                        backgroundImage: AssetImage("assets/images/dp.jpg"),
                      ),
                      SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Atharva Paradkar',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            'atharvaparadkar91@gmail.com',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.folder_rounded),
                title: Text('My Files'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
              const ListTile(
                leading: Icon(Icons.group),
                title: Text('Shared with me'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text('Starred'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
              const ListTile(
                leading: Icon(Icons.delete),
                title: Text('Trash'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
              const ListTile(
                leading: Icon(Icons.upload),
                title: Text('Uploads'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.share),
                title: Text('Share'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                textColor: Colors.black,
                iconColor: Color.fromARGB(200, 0, 0, 0),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Drawer"),
        backgroundColor: Colors.red,
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
