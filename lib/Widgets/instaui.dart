import "package:flutter/material.dart";

class InstaUI extends StatelessWidget {
  const InstaUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'paradkar_atharva',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        leading: const Icon(Icons.arrow_back_ios_new_rounded),
        actions: const [
          Icon(Icons.notifications_none_rounded, size: 30),
          Icon(Icons.more_vert_rounded, size: 30)
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(7),
                  width: 160,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage('assets/images/ana_de_armas.jpg'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'paradkar_atharva',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'CEO & Founder',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            profileDetails('1861', 'posts'),
                            profileDetails('13.7M', 'followers'),
                            profileDetails('401', 'following'),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(170, 40),
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 0, 255),
                                  foregroundColor:
                                      const Color.fromARGB(255, 0, 255, 255)),
                              child: const Text(
                                'Follow',
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 0, 0, 255),
                                    width: 2.5),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.keyboard_arrow_down_sharp,
                                size: 40,
                                color: Color.fromARGB(255, 0, 0, 255),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 7),
          SizedBox(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/ana_de_armas.jpg'),
                            fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Text('Title'),
                    ],
                  );
                }),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/images/ana_de_armas.jpg'),
                          fit: BoxFit.cover,
                        ),
                    ),
                    margin: const EdgeInsets.all(6),
                    height: 150,
                    width: 150,
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget profileDetails(String text1, text2) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
