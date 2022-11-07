import 'package:flutter/material.dart';

List<String> storyPaths = [
  'assets/facebookStory.jpg',
  'assets/facebookStory.jpg',
  'assets/facebookStory.jpg',
  'assets/facebookStory.jpg',
  'assets/facebookStory.jpg',
];

class StorySlider extends StatelessWidget {
  const StorySlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Stack(children: [
            //Column(),
            ClipRRect(
              child: Image.asset(
                storyPaths[index],
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            const CircleAvatar(
              child: Icon(Icons.person),
              radius: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 120, left: 10),
              child: Text(
                'Owner',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        itemCount: storyPaths.length,
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.expand(
          height: 210,
          width: double.infinity,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
                child: Icon(Icons.person),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Owner',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        '3h',
                      ),
                      Container(
                          padding: const EdgeInsets.only(left: 3),
                          width: 15,
                          height: 15,
                          child: Image.asset('assets/earth.png'))
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'My Post',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('100'),
              const SizedBox(
                width: 7,
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/like.jpg',
                  width: 30,
                  height: 15,
                  fit: BoxFit.fill,
                ),
              ),
              const Expanded(child: SizedBox()),
              const Expanded(
                  child: Text(
                '100 Comment',
                textAlign: TextAlign.end,
              )),
            ],
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 90,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Image.asset('assets/singleLike.jpg')),
                    const Text(
                      'Like',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 100,
                height: 30,
                child: Row(
                  children: [
                    Expanded(child: Image.asset('assets/comment.jpg')),
                    const Text(
                      'Comment',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
              SizedBox(
                width: 90,
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/share.png',
                      ),
                    ),
                    const Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 1,
            color: Colors.black,
          )
        ]),
      ),
    );
  }
}
