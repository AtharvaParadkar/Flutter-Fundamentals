import "package:flutter/material.dart";
import "package:flutter_basics/Widgets/alert.dart";
import "package:flutter_basics/Widgets/bottomsheet.dart";
import "package:flutter_basics/Widgets/image.dart";
import "package:flutter_basics/Widgets/list_grid.dart";
import "package:flutter_basics/Widgets/snackbar.dart";

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({super.key});

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int selectedindex = 0;

  //^ Create PageController
  PageController pagesController = PageController();

  //& Create simple text widgets
  // List<Widget> bnavwidgets = [
  //   const Text('Home'),
  //   const Text('Search'),
  //   const Text('Category'),
  //   const Text('Settings'),
  //   const Text('Profile'),
  // ];

  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
      pagesController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Nav Bar'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 255),
      ),
      body: //^ Return Pages
      PageView(
        controller: pagesController,
        children: const [
          AlertWidget(),
          BottomSheetWidget(),
          ImageWidget(),
          ListGrid(),
          SnackbarWidget()
        ],
      ),
      //& Return simple text widgets 
      // Center(child: bnavwidgets.elementAt(selectedindex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_sharp),
            label: 'Category',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
            backgroundColor: Colors.cyan,
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 255),
        unselectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}
