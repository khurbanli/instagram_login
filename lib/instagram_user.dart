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
        title: Text("instagram_user"),
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
                    child: Text("post"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("followers"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("following"),
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
