import 'package:flutter/material.dart';

//^ Stack is used when you want to place multiple widgets on top of each other with no space between them

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Stack(
            //& 1
            children: [
              Positioned(
                child: Container(
                  height: 261,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.hollywoodreporter.com/wp-content/uploads/2019/11/ana_de_armas_-_getty_-_h_2019_.jpg?w=1296'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: 110,
                  height: 261,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.naturaldiamonds.com/wp-content/uploads/2022/06/NDC_001.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  width: 120,
                  height: 261,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media.vogue.co.uk/photos/615425675c7a2bb42fbcb2dd/2:3/w_2560%2Cc_limit/2021.09.28%2520B25%2520Ana%2520De%2520Armas%2520L1170866%2520col%2520RT%2520col.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          Stack(
            //& 2
            children: [
              Positioned(
                child: Container(
                  height: 261,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://ca-times.brightspotcdn.com/dims4/default/5c84ef0/2147483647/strip/false/crop/4718x3604+0+0/resize/1486x1135!/quality/75/?url=https%3A%2F%2Fcalifornia-times-brightspot.s3.amazonaws.com%2Ffd%2F21%2F3491434e446c83711360a43f6978%2Fla-photos-1staff-471763-en-ana-de-armas-mjc-09.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: 110,
                  height: 261,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/b/bb/Ana_De_Armas_GQ_Mexico.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  width: 120,
                  height: 261,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://static.wikia.nocookie.net/filmguide/images/4/48/AnadeArmas.jpg/revision/latest?cb=20180115053300'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Stack(
            //& 3
            children: [
              Positioned(
                child: Container(
                  height: 261,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media.gettyimages.com/id/1179841020/photo/london-england-ana-de-armas-attends-the-knives-out-european-premiere-during-the-63rd-bfi.jpg?s=612x612&w=0&k=20&c=r1qdeHeCC--6d_b_hYJDxXvyJkMuuLpMtEQ7VB3pnkQ='),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  width: 110,
                  height: 261,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://media.gettyimages.com/id/1421974022/photo/venice-italy-ana-de-armas-arrives-at-the-hotel-excelsior-during-the-79th-venice-international.jpg?s=612x612&w=0&k=20&c=6peuLOrhzNUbo14pnO8JqnPowYnOzGdz0MuCmxGlpQk='),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                child: Container(
                  width: 120,
                  height: 261,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/f/fb/Ana_de_Armas%2C_March_2018%2C_GQ_Mexico_06_cropped.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
      
          // Container(
          //   color: Colors.indigoAccent,
          //   child: Center(
          //     child: Stack(
          //       // alignment: Alignment.center,
          //       children: [
          //         Positioned(
          //           bottom: 10,
          //           left: 10,
          //           child: Container(height: 400, width: 400, color: Colors.yellow),
          //         ),
          //         Positioned(
          //           right: 0,
          //           bottom: 110,
          //           child: Container(height: 300, width: 300, color: Colors.amber),
          //         ),
          //         Positioned(
          //           left: 110,
          //           bottom: 110,
          //           child: Container(height: 200, width: 200, color: Colors.orange),
          //         ),
          //         Positioned(
          //           right: 100,
          //           bottom: 210,
          //           child: Container(height: 100, width: 100, color: Colors.red),
          //         ),
          //         Positioned(
          //           right: 150,
          //           bottom: 210,
          //           child: Container(height: 50, width: 50, color: Colors.pink),
          //         ),
          //         Positioned(
          //           right: 150,
          //           bottom: 235,
          //           child: Container(height: 25, width: 25, color: const Color.fromARGB(255, 239, 29, 204)),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
