import 'package:flutter/cupertino.dart';
import 'package:shahrazad/models/screen_info.dart';

class StoryOption {
  String label;
  ScreenInfo? nextScreenInfo;
  void Function(BuildContext context)? action;

  StoryOption(this.label, this.nextScreenInfo, {this.action});
}
