import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 20),
              Text(
                'Network Image',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Container(
                height: 250,
                width: 220,
                //^ With border radius
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://w0.peakpx.com/wallpaper/36/536/HD-wallpaper-2020-jodie-comer.jpg'),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 15,
                      color: Colors.black,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                //^ Without border radius
                // child: Image.network(
                //   'https://w0.peakpx.com/wallpaper/36/536/HD-wallpaper-2020-jodie-comer.jpg',
                //   fit: BoxFit.fill,
                // ),
              ),
              const SizedBox(height: 30),
              Text('Asset Image',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 30),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('assets/images/jodiecomer.jpg'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 15,
                        color: Colors.black,
                        spreadRadius: 10,
                      )
                    ]),
              ),
              const SizedBox(height: 40),
              Text('Cached Network Image',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 30),
              SizedBox(
                height: 200,
                width: 300,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://ichef.bbci.co.uk/images/ic/640x360/p0h5tbt6.jpg',
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) {
                    // ignore: avoid_print
                    print(error);
                    return const Icon(Icons.error);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
