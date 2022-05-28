import '../models/screen_info.dart';
import '../models/story_info.dart';
import './back_to_main.dart';

final story2 = StoryInfo(
  firstScreen: screen1,
  title: 'قريبا...',
  description: 'سيتم إضافة المزيد من القصص لاحقا',
  imageUrl:
      'https://media.istockphoto.com/vectors/coming-soon-isolated-vector-icon-paper-style-promotion-sign-start-a-vector-id1273109788',
);

final screen1 = ScreenInfo(
  '',
  null,
  [
    mainPageOption,
  ],
);
