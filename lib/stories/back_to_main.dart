import 'package:flutter/material.dart';

import '../models/story_option.dart';
import '../screens/home_screen.dart';

final mainPageOption = StoryOption(
  'عد إلى صفحة البداية',
  null,
  action: (context) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ),
    (route) => false,
  ),
);
