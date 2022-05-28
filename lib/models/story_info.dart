import 'screen_info.dart';

const _emptyCover =
    'https://webcolours.ca/wp-content/uploads/2020/10/webcolours-unknown.png';

class StoryInfo {
  StoryInfo({
    required this.title,
    required this.firstScreen,
    this.description = '',
    this.imageUrl = _emptyCover,
  });
  final String title;
  final String description;
  final String imageUrl;
  final ScreenInfo firstScreen;
}
