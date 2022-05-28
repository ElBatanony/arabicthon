import 'package:flutter/material.dart';
import 'package:shahrazad/models/screen_info.dart';

import '../components/options_list.dart';

class StoryScreen extends StatelessWidget {
  final ScreenInfo screenInfo;
  const StoryScreen(this.screenInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = screenInfo.imageUrl ?? '';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (imageUrl.isNotEmpty) Image.network(imageUrl),
              Text(screenInfo.text),
              OptionsList(options: screenInfo.options)
            ],
          ),
        ),
      ),
    );
  }
}
