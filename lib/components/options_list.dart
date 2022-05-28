import 'package:flutter/material.dart';
import 'package:shahrazad/models/screen_info.dart';

import '../models/story_option.dart';
import '../screens/story_screen.dart';

class OptionsList extends StatelessWidget {
  final List<StoryOption> options;
  const OptionsList({Key? key, required this.options}) : super(key: key);

  /// Transition to the specified next screen
  void next(BuildContext context, ScreenInfo option) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => StoryScreen(option)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (final option in options)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed:
                  (option.action == null && option.nextScreenInfo == null)
                      ? null
                      : () {
                          if (option.nextScreenInfo == null) {
                            option.action!(context);
                          } else {
                            next(context, option.nextScreenInfo!);
                          }
                        },
              child: Text(option.label),
            ),
          )
      ],
    );
  }
}
