import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/ItemAppBar.dart';
import '../widgets/ItemBottomNavBar.dart';

// ignore: must_be_immutable
class ItemPage extends StatelessWidget {
  List<Color> Clrs = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.indigo,
  ];

  ItemPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedecf2),
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              "images/1.png",
              height: 300,
            ),
          ),
          Arc(
            height: 30,
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "Product Title",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.deepPurpleAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: Colors.deepPurpleAccent,
                            ),
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  "01",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurpleAccent),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "This is more detailed description of the product . you can write here more about the product ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 17, color: Colors.deepPurpleAccent),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Size",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 5;
                                  i < 10;
                                  i++) // Corrected loop condition
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    i.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            "Color",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 0;
                                  i < 5;
                                  i++) // Corrected loop condition
                                Container(
                                  height: 30,
                                  width: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                    color: Clrs[i],
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    i.toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurpleAccent,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 8),
                    //   child: Row(
                    //     children: [
                    //       const Text(
                    //         "Size",
                    //         style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.deepPurpleAccent),
                    //       ),
                    //       const SizedBox(
                    //         width: 10,
                    //       ),
                    //       Row(
                    //         children: [
                    //           for (int i = 5; 1 < 10; i++)
                    //             Container(
                    //               height: 30,
                    //               width: 30,
                    //               alignment: Alignment.center,
                    //               margin:
                    //                   const EdgeInsets.symmetric(horizontal: 5),
                    //               decoration: BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.circular(30),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                       color: Colors.grey.withOpacity(0.5),
                    //                       spreadRadius: 2,
                    //                       blurRadius: 8),
                    //                 ],
                    //               ),
                    //               child: Text(
                    //                 i.toString(),
                    //                 style: const TextStyle(
                    //                     fontSize: 18,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: Colors.deepPurpleAccent),
                    //               ),
                    //             ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 8),
                    //   child: Row(
                    //     children: [
                    //       const Text(
                    //         "Color",
                    //         style: TextStyle(
                    //             fontSize: 18,
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.deepPurpleAccent),
                    //       ),
                    //       const SizedBox(
                    //         width: 10,
                    //       ),
                    //       Row(
                    //         children: [
                    //           for (int i = 0; 1 < 5; i++)
                    //             Container(
                    //               height: 30,
                    //               width: 30,
                    //               alignment: Alignment.center,
                    //               margin:
                    //                   const EdgeInsets.symmetric(horizontal: 5),
                    //               decoration: BoxDecoration(
                    //                 color: Clrs[i],
                    //                 borderRadius: BorderRadius.circular(30),
                    //                 boxShadow: [
                    //                   BoxShadow(
                    //                       color: Colors.grey.withOpacity(0.5),
                    //                       spreadRadius: 2,
                    //                       blurRadius: 8),
                    //                 ],
                    //               ),
                    //               child: Text(
                    //                 i.toString(),
                    //                 style: const TextStyle(
                    //                     fontSize: 18,
                    //                     fontWeight: FontWeight.bold,
                    //                     color: Colors.deepPurpleAccent),
                    //               ),
                    //             ),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
