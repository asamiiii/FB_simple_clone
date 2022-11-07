import 'package:fb_login_page_clone/login_screen/widgets.dart';
import 'package:flutter/material.dart';
import '../home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  navigatTo() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 89, 153),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 130),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              fbLogo(),
              Container(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                width: 300,
                height: 450,
                //color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    textField('Email or Phone'),
                    const SizedBox(
                      height: 20,
                    ),
                    textField('Password', securedText: true),
                    const SizedBox(
                      height: 40,
                    ),
                    loginButton(navigatTo),
                    const Expanded(
                        child: SizedBox(
                      height: 40,
                    )),
                    bottomButtons('Sign UP for Facebook'),
                    const SizedBox(
                      height: 20,
                    ),
                    bottomButtons('Forgot Password'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
