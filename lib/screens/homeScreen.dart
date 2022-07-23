import 'package:ai_musicplayer/widgets/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Scaffold(
      appBar: AppBar(
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
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
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
              preferredSize: Size.fromHeight(50.0))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/mortal.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/mythpat.jpg'),
                          radius: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Funny gameplay! playing gta",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Mythpat 10million views Streamed 12 months ago',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/techno.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/techno.jpg'),
                          radius: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mortal is live!! new update gameplay",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Mortal 10million views Streamed 11 months ago',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/mythpat.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/mythpat.jpg'),
                          radius: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mortal is live!! new update gameplay",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Mortal 10million views Streamed 11 months ago',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Icon(Icons.menu)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.videogame_asset_rounded)),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_circle_outline_outlined,
                size: 44,
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.subscriptions)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.video_library_outlined)),
        ],
      )),
    );
  }
}
