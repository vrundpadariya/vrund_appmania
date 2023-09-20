import 'package:flutter/material.dart';

import '../utiles/global.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int? dropdownvalue;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.location_on_rounded, color: Colors.black),
        title: const Text(
          "Mota Varachha",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        //padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Find the ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                          ),
                        ),
                        TextSpan(
                          text: "best \n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Food ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Around you",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      DropdownButton(
                        value: dropdownvalue,
                        hint: const Text("Select catagory..."),
                        items: Global.allProducts.map((e) {
                          return DropdownMenuItem(
                              value: Global.allProducts.indexOf(e),
                              child: Text("${e['categoryName']}"));
                        }).toList(),
                        onChanged: (val) {
                          setState(() {
                            dropdownvalue = val!;
                          });
                        },
                      ),
                    ]),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              RichText(
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Find ",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                        text: "  5km >",
                                        style: TextStyle(
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Visibility(
                            child: ActionChip(
                              label: const Row(
                                children: [
                                  Text("Salad"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Visibility(
                            child: ActionChip(
                              label: const Row(
                                children: [
                                  Text("hot sales"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Visibility(
                            child: ActionChip(
                              label: const Row(
                                children: [
                                  Text("populrity"),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 250,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                    //   color: Colors.amber,
                                    ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.deepPurple,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
