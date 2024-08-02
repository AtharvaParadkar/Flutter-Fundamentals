// ignore_for_file: unused_import

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GymUI extends StatefulWidget {
  const GymUI({super.key});

  @override
  State<GymUI> createState() => _GymUIState();
}

class _GymUIState extends State<GymUI> {
  String _selectedOwnership = 'My Self, 29 Years';
  final TextEditingController _promoCodeController = TextEditingController();
  String? _selectedPaymentMethod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.all(12),
              child: AnotherCarousel(
                images: [
                  Image.asset('assets/images/run.png', fit: BoxFit.fill),
                  Image.asset('assets/images/run3.jpg', fit: BoxFit.fill),
                  Image.asset('assets/images/run4.jpg', fit: BoxFit.fitHeight),
                  Image.asset('assets/images/run2.jpeg', fit: BoxFit.cover),
                ],
                animationCurve: Curves.bounceInOut,
                dotSize: 6,
                indicatorBgPadding: 10,
                dotBgColor: const Color.fromARGB(0, 0, 0, 0),
              ),
              // CarouselSlider(
              //   items: [
              //     Image.asset('assets/images/run.png', fit: BoxFit.fill),
              //     Image.asset('assets/images/run3.jpg', fit: BoxFit.fill),
              //     Image.asset('assets/images/run4.jpg', fit: BoxFit.fitHeight),
              //     Image.asset('assets/images/run2.jpeg', fit: BoxFit.cover),
              //   ],
              //   options: CarouselOptions(
              //     height: 200,
              //     enlargeCenterPage: true,
              //     autoPlay: true,
              //     aspectRatio: 16 / 9,
              //     autoPlayCurve: Curves.fastOutSlowIn,
              //     enableInfiniteScroll: true,
              //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
              //     viewportFraction: 0.8,
              //   ),
              // ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Package Name Title 1',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Subscription Fee',
                        style: TextStyle(fontSize: 18),
                      ),
                      Text('120.000 KWD',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 255),
                              fontSize: 18)),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: Color.fromARGB(255, 0, 0, 255)),
                          SizedBox(width: 6),
                          Text('Club Name, Salmiya Block 10',
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.calendar_month,
                              color: Color.fromARGB(255, 0, 0, 255)),
                          SizedBox(width: 10),
                          Column(
                            children: [
                              Text('Duration', style: TextStyle(fontSize: 18)),
                              Text('30 Days', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.sports_martial_arts_rounded,
                              color: Color.fromARGB(255, 0, 0, 255)),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Belt', style: TextStyle(fontSize: 18)),
                              Text('Black', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.watch_outlined,
                              color: Color.fromARGB(255, 0, 0, 255)),
                          SizedBox(width: 6),
                          Text('40',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          Text(' Classes in packages!',
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text('Class Category',
                              style: TextStyle(fontSize: 18)),
                          Spacer(),
                          Text('12',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          Text('Class Category',
                              style: TextStyle(fontSize: 18)),
                          Spacer(),
                          Text('12',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('More Details',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text('Ownership *', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  DropdownButton<String>(
                    items: [
                      'My Self, 29 Years',
                      'Spouse, 27 Years',
                      'Child, 5 Years',
                      'Parent, 55 Years'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedOwnership = newValue!;
                      });
                    },
                    value: _selectedOwnership,
                    isExpanded: true,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Promo Code',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text('Have a Promo Code? Use it here.',
                      style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _promoCodeController,
                          decoration: InputDecoration(
                            hintText: 'Promo Code Here',
                            border: const OutlineInputBorder(),
                            suffixIcon: Container(
                              padding: const EdgeInsets.all(8),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                    horizontal: 24.0,
                                  ),
                                ),
                                child: const Text('Apply'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Payment Method',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/knet.png',
                        height: 45,
                        width: 45,
                      ),
                      const SizedBox(width: 15),
                      const Text('KNET', style: TextStyle(fontSize: 18)),
                      const Spacer(),
                      Radio(
                        value: 'KNET',
                        groupValue: _selectedPaymentMethod,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedPaymentMethod = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 45,
                        width: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image.asset(
                                'assets/images/mastercard.jpg',
                                height: 25,
                                width: 30,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Image.asset(
                                'assets/images/visa.png',
                                height: 25,
                                width: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text('Visa/Master Card',
                          style: TextStyle(fontSize: 18)),
                      const Spacer(),
                      Radio(
                        value: 'Visa/Master Card',
                        groupValue: _selectedPaymentMethod,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedPaymentMethod = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Details',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Text(
                            '120.000 KWD',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          Text(
                            '0.000 KWD',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 255)),
                          ),
                          Spacer(),
                          Text(
                            '120.000 KWD',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 255)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 160, 37, 249),
                    Color.fromARGB(255, 10, 163, 234),
                    Color.fromARGB(255, 0, 0, 255),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Pay Now',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
