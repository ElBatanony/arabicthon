import 'package:flutter/material.dart';

import '../models/story_info.dart';
import '../screens/story_screen.dart';

/// The card displayed on the home screen containing information about a story.
class StoryCard extends StatelessWidget {
  const StoryCard({Key? key, required this.info}) : super(key: key);
  final StoryInfo info;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StoryScreen(info.firstScreen)));
        },
        child: Card(
          color: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(
                info.imageUrl,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8),
              Text(info.title, style: Theme.of(context).textTheme.titleLarge),
              SizedBox(
                width: 150,
                child: Text(info.description,
                    style: Theme.of(context).textTheme.bodyText2,
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// WIP
// TODO: fix overflow
class StoryCard2 extends StatelessWidget {
  const StoryCard2({Key? key, required this.info}) : super(key: key);
  final StoryInfo info;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => StoryScreen(info.firstScreen)));
        },
        child: SizedBox(
          height: 600,
          child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 8,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      info.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(info.title,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                  Text(info.description,
                      style: Theme.of(context).textTheme.bodyText2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
