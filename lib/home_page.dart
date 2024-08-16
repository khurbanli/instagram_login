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
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("lib/icon/noqte.png"),
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
