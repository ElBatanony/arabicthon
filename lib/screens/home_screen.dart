import 'package:flutter/material.dart';
import 'package:shahrazad/stories/stories.dart';
import 'package:shahrazad/components/story_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightBlue[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'شهرزاد',
              style: Theme.of(context).textTheme.headline1,
            ),
            const Text('احكي يا شهرزاد'),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    StoryCard(info: stories[0]),
                    StoryCard(info: stories[1]),
                  ],
                ),
                Column(
                  children: [
                    StoryCard(info: stories[1]),
                    StoryCard(info: stories[1]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
