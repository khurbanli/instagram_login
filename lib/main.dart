import 'package:flutter/material.dart';
import 'package:login/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScren(),
    );
  }
}

class LoginScren extends StatefulWidget {
  @override
  State<LoginScren> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScren> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final fromKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final double wid = screen.size.width;
    final double hei = screen.size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: fromKey,
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
                  child: TextFormField(
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
                    validator: (tfgirdisi) {
                      if (tfgirdisi!.isEmpty) {
                        return "enter the username ";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(hei / 40),
                  child: TextFormField(
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
                    validator: (tfgirdisi) {
                      if (tfgirdisi!.isEmpty) {
                        return "enter the passwprd";
                      }
                      if (tfgirdisi.length < 6) {
                        return "password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(hei / 40),
                  child: SizedBox(
                    width: wid / 2,
                    height: hei / 15,
                    child: ElevatedButton(
                      onPressed: () {
                        bool sonuc = fromKey.currentState!.validate();
                        String username = _usernameController.text;
                        String password = _passwordController.text;
                        if (username == "admin" && password == "123456") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                        if (sonuc) {
                          String user = _usernameController.text;
                          String pass = _passwordController.text;
                          print(
                              "girilen usernam: $user\ngirilen password: $pass");
                        }
                        _usernameController.text = "";
                        _passwordController.text = "";
                      },
                      child: Text(
                        "LOG IN",
                        style: TextStyle(fontSize: wid / 25),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "forget password",
                    style: TextStyle(color: Colors.grey, fontSize: wid / 30),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
