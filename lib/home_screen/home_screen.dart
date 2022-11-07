import 'package:fb_login_page_clone/home_screen/widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        250,
        250,
        250,
      ),
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontSize: 30),
        ),
        toolbarHeight: 70,
      ),
      body:SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              StorySlider(),
              SizedBox(
                height: 10,
              ),
              Post(),
              Post(),
              Post(),
              //Post(),
            ]),
      ),
        
    );
  }
}
