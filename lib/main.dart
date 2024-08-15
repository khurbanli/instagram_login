import 'package:flutter/material.dart';
import 'package:login/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final double wid = screen.size.width;
    final double hei = screen.size.height;

    return Scaffold(
      backgroundColor: Colors.white60,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: SizedBox(
                  width: wid / 5,
                  height: hei / 3,
                  child: Image.asset("lib/icon/instagram.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(hei / 40),
                child: TextField(
                  controller: _usernameController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "username",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(hei / 40),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "password",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(hei / 30),
                child: SizedBox(
                  width: wid / 2,
                  height: hei / 15,
                  child: ElevatedButton(
                    onPressed: () {
                      String username = _usernameController.text;
                      String password = _passwordController.text;
                      if (username == "admin" && password == "123") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Invalid username or password"),
                        ));
                      }
                    },
                    child: Text(
                      "LOG IN",
                      style: TextStyle(fontSize: wid / 25),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Yardim secildi");
                },
                child: Text(
                  "forget password",
                  style: TextStyle(color: Colors.white60, fontSize: wid / 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
