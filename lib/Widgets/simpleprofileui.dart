import "package:flutter/material.dart";

class SimpleProfileUI extends StatelessWidget {
  const SimpleProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height,
        w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile UI'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_sharp,
            size: 27,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border_sharp, size: 27),
          SizedBox(width: 15),
          Icon(Icons.more_horiz_sharp, size: 27),
          SizedBox(width: 20),
        ],
      ),
      body: const Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage('assets/images/ana_de_armas.jpg'),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Atharva Paradkar',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'CEO & Founder',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '23',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Created',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '398',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Attended',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '936',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.grid_view_sharp,size: 30),
              Icon(Icons.view_list_rounded,size: 30)
            ],
          )
        ],
      ),
    );
  }
}
