import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
   List<String> catagories = [
    "All",
    "Trending",
    "Music",
    "Rap battle",
    "Flutter",
    "Ai in android",
    "standup",
    "Football",
    "Cricket",
    "live bgmi"
  ];

  String selectedcatagory = "All";
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/yt.png',
          height: 80,
          fit: BoxFit.contain,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.cast_sharp,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_circle,
                color: Colors.black,
              ))
        ],
        bottom: PreferredSize(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 18,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(
                          Icons.explore,
                          color: Colors.black,
                        ),
                        Text(
                          'Explore',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade400),
                  ),
                  SizedBox(
                    width: 20,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  // Wrap(
                  //   spacing: 6,
                  //   children: catagories
                  //       .map((catagory) => FilterChip(
                  //           label: Text(
                  //             catagory,
                  //             style: TextStyle(
                  //                 color: selectedcatagory == catagory
                  //                     ? Colors.white
                  //                     : Colors.black),
                  //           ),
                  //           backgroundColor: Colors.grey.shade200,
                  //           showCheckmark: false,
                  //           selectedColor: Colors.grey.shade600,
                  //           selected: selectedcatagory == catagory,
                  //           onSelected: (bool value) {
                  //             setState(() {
                  //               selectedcatagory = catagory;
                  //             });
                  //           }))
                  //       .toList(),
                  // ),

                  Wrap(
                      spacing: 6,
                      children: catagories
                          .map((catagory) => FilterChip(
                              label: Text(
                                catagory,
                                style: TextStyle(
                                    color: selectedcatagory == catagory
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              showCheckmark: false,
                              backgroundColor: Colors.grey.shade200,
                              selected: selectedcatagory == catagory,
                              selectedColor: Colors.grey.shade600,
                              onSelected: (bool value) {
                                setState(() {
                                  selectedcatagory = catagory;
                                });
                              }))
                          .toList())
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50.0)));
  }
}
