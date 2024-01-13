import 'package:flutter/material.dart';
import 'package:whtasppui/chatui.dart';
import 'package:whtasppui/contacts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          drawerTheme: DrawerThemeData(scrimColor: Colors.transparent)),
      title: "New Whatsapp UI",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65, left: 5, right: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 10),
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Message",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Online",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Groups",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )),
                      const SizedBox(
                        width: 25,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "friends",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          )),
                    ],
                  ))
            ],
          ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                height: 220,
                decoration: const BoxDecoration(
                    color: Color(0xFF27c1a9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Favorite contacts",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildContextAvatar("Sabita", "img1.jpeg"),
                            buildContextAvatar("Sabita", "img2.jpeg"),
                            buildContextAvatar("Sabita", "img3.jpeg"),
                            buildContextAvatar("Sabita", "img4.jpg"),
                            buildContextAvatar("Sabita", "img5.jpeg"),
                            buildContextAvatar("Sabita", "img6.jpeg"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 380,
              left: 0,
              right: 0,
              child: Container(
                height: 550,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 450,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Column(
                              children: [
                                builmessageAvatar("i love you", "Sita", "20m",
                                    2, "img1.jpeg"),
                                builmessageAvatar("i will call you", "Alex",
                                    "10m", 0, "img2.jpeg"),
                                builmessageAvatar("i love you", "Sita", "20m",
                                    4, "img3.jpeg"),
                                builmessageAvatar("i love you", "Sita", "20m",
                                    10, "img6.jpeg"),
                                builmessageAvatar("i love you", "Sita", "20m",
                                    8, "img5.jpeg"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.greenAccent,
          child: const Icon(Icons.edit),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black38,
        width: 300,
        elevation: 30,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(40))),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xF71F1E1E),
              borderRadius:
                  BorderRadius.horizontal(right: Radius.circular(40))),
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 55,
                    ),
                    Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          Image.asset("assets/images/img1.jpeg").image,
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    const Text(
                      "Alex Joe",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                DrawerItem(
                  icon: Icons.key,
                  title: "Account",
                ),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: Icons.chat,
                  title: "Chat",
                ),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: Icons.notifications_active,
                  title: "Noticifications",
                ),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: Icons.storage,
                  title: "Data & Storage",
                ),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(
                  icon: Icons.help,
                  title: "Help",
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  indent: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                DrawerItem(title: "Invite a Friend", icon: Icons.people),
                const SizedBox(
                  height: 250,
                ),
                DrawerItem(title: "Log Out", icon: Icons.logout)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 55,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
