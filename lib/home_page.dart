import 'package:flutter/material.dart';
import 'package:login/instagram_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text("instagram"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipOval(
                        child: Image.asset(
                      "lib/image/car.jpeg",
                      width: 40,
                      height: 40,
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InstagramUser()));
                      },
                      child: Text(
                        "instagram_user",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Spacer(),
                    PopupMenuButton(
                      icon: Image.asset("lib/icon/noqte.png"),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 1,
                          child: Row(
                            children: [
                              Icon(Icons.thumb_down),
                              TextButton(
                                child: Text("Not interesting"),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 1),
                                      content: Text("added to uninterested"),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          child: Row(
                            children: [
                              Icon(Icons.report),
                              TextButton(
                                child: Text("Report"),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 1),
                                      content: Text("complained"),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 3,
                          child: Row(
                            children: [
                              Icon(Icons.block),
                              TextButton(
                                child: Text("Block"),
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      duration: Duration(seconds: 1),
                                      content: Text(
                                          "the account has been blocked !"),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Image.asset("lib/image/car.jpeg"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("lib/icon/like.png"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("lib/icon/comment.png"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("lib/icon/send.png"),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("lib/icon/saved.png"),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                    "khurbanli   BMW (Bayerische Motoren Werke AG) Almaniyanın məşhur avtomobil istehsalçısıdır. "
                    "1916-cı ildə təsis edilmişdir və baş ofisi Münhendə yerləşir. BMW, avtomobil, "
                    "motosiklet və mühərrik istehsalı ilə məşhurdur."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
