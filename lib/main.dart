import 'package:flutter/material.dart';
import 'package:login_design_2023/animations.dart/FadeAnimation.dart';

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
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final lightGrey = const Color.fromARGB(255, 166, 166, 166);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        color: lightGrey,
        child: Column(children: [
          Container(
            height: 650,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                    child: FadeAnimation(
                        1.6,
                        Container(
                          margin: const EdgeInsets.only(top: 200),
                          child: const Center(
                              child: Text(
                            "Hello!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          )),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(children: [
              FadeAnimation(
                  1.8,
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(29, 31, 28, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10)),
                        ]),
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.white))),
                        child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or phone number",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 24))),
                      ),
                      Container(
                          padding: const EdgeInsets.all(8),
                          child: const TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      color: Colors.white, fontSize: 24)))),
                    ]),
                  )),
              const SizedBox(
                height: 30,
              ),
              FadeAnimation(
                  2,
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(29, 31, 28, 1),
                          Color.fromRGBO(29, 31, 28, .4),
                        ])),
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                  )),
              const SizedBox(
                height: 70,
              ),
              const FadeAnimation(
                  1.5,
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 29, 31, 28), fontSize: 24),
                  ))
            ]),
          )
        ]),
      )),
    );
  }
}
