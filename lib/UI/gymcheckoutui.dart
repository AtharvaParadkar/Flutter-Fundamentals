// ignore_for_file: unused_import

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/UI/modal.dart/gymuimodal.dart';

class GymUI extends StatefulWidget {
  const GymUI({super.key});

  @override
  State<GymUI> createState() => _GymUIState();
}

class _GymUIState extends State<GymUI> {
  final gym = Gymui(
    fee: 120.000,
    pacname: 'Package Name Title 1',
    loc: 'Club Name, Salmiya Block 1',
    belt: 'Black',
    classcategory: 'Class Category1',
    duration: 30,
    noclasspac: 40,
    classcategoryno: 12,
    subtotal: 120.000,
    discount: 20.000,
    total: 120.000,
  );

  String _selectedOwnership = 'My Self, 29 Years';

  final TextEditingController _promoCodeController = TextEditingController();
  String? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
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
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gym.pacname,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Subscription Fee',
                        style: TextStyle(fontSize: 18),
                      ),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 160, 37, 249),
                              Color.fromARGB(255, 10, 163, 234),
                              Color.fromARGB(255, 0, 0, 255),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds);
                        },
                        child: Text(
                          '${gym.fee.toString()} KWD',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 160, 37, 249),
                                  Color.fromARGB(255, 10, 163, 234),
                                  Color.fromARGB(255, 0, 0, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: const Icon(
                              Icons.location_on,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(gym.loc, style: const TextStyle(fontSize: 18))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 160, 37, 249),
                                  Color.fromARGB(255, 10, 163, 234),
                                  Color.fromARGB(255, 0, 0, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: const Icon(Icons.calendar_month),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            children: [
                              const Text('Duration',
                                  style: TextStyle(fontSize: 18)),
                              Text('${gym.duration} Days',
                                  style: const TextStyle(fontSize: 18)),
                            ],
                          ),
                          const Spacer(),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 160, 37, 249),
                                  Color.fromARGB(255, 10, 163, 234),
                                  Color.fromARGB(255, 0, 0, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child:
                                const Icon(Icons.sports_martial_arts_rounded),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Belt',
                                  style: TextStyle(fontSize: 18)),
                              Text(gym.belt,
                                  style: const TextStyle(fontSize: 18)),
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
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 160, 37, 249),
                                  Color.fromARGB(255, 10, 163, 234),
                                  Color.fromARGB(255, 0, 0, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: const Icon(Icons.watch_outlined),
                          ),
                          const SizedBox(width: 6),
                          Text(gym.noclasspac.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          const Text(' Classes in packages!',
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(gym.classcategory,
                              style: const TextStyle(fontSize: 18)),
                          const Spacer(),
                          Text(gym.classcategoryno.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            gym.classcategory,
                            style: const TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            gym.classcategoryno.toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
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
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Payment Details',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Text(
                            'Sub Total',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            '${gym.subtotal.toString()} KWD',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'Discount',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Spacer(),
                          Text(
                            '${gym.discount.toString()} KWD',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 160, 37, 249),
                                  Color.fromARGB(255, 10, 163, 234),
                                  Color.fromARGB(255, 0, 0, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: const Text(
                              'Total',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          const Spacer(),
                          ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 160, 37, 249),
                                  Color.fromARGB(255, 10, 163, 234),
                                  Color.fromARGB(255, 0, 0, 255),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(bounds);
                            },
                            child: Text(
                              '${gym.total.toString()} KWD',
                              style: const TextStyle(fontSize: 18),
                            ),
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
