import 'package:flutter/material.dart';

class InstagramUser extends StatefulWidget {
  const InstagramUser({super.key});

  @override
  State<InstagramUser> createState() => _InstagramUserState();
}

class _InstagramUserState extends State<InstagramUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "instagram_user",
        ),
        actions: [
          PopupMenuButton(
              child: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text(
                        "Block",
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.black54,
                            duration: Duration(seconds: 1),
                            content: Text(
                              "Blocked !",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text(
                        "Report",
                        style: TextStyle(color: Colors.red),
                      ),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.black54,
                            duration: Duration(seconds: 5),
                            content: Text(
                              "Do you Report ?",
                              style: TextStyle(color: Colors.white),
                            ),
                            action: SnackBarAction(
                              label: "YES",
                              textColor: Colors.red,
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      "Reported !",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text("Copy profile  URL"),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Copyed !",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.black54,
                            duration: Duration(seconds: 1),
                          ),
                        );
                      },
                    ),
                    PopupMenuItem(
                      value: 4,
                      child: Text("Shap profile"),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Duration(seconds: 2),
                            content: Text(
                              "Sent...",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        );
                      },
                    ),
                    PopupMenuItem(
                      value: 5,
                      child: Text("QR code"),
                    ),
                  ]),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "lib/image/car.jpeg",
                      width: 60,
                      height: 60,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "12\npost",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "12,7k\nfollowers",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "570\nfollowing",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Text("Instagram User\nAvtomobil sevənlərin məkanı🚘"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Message"),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Image.asset("lib/icon/add.png"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
