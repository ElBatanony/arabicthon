import '../models/story_option.dart';
import '../models/screen_info.dart';
import '../models/story_info.dart';
import './back_to_main.dart';

final story1 = StoryInfo(
  firstScreen: startingScreen,
  title: 'مغامرة في المدينة',
  description: 'رحلة مع أحد الحيوانات',
  imageUrl:
      'https://media.istockphoto.com/vectors/vector-illustration-of-lion-isolated-on-white-background-vector-id1198529588',
);

const schoolImageUrl = 'https://illustoon.com/photo/2873.png';
final startingScreen = ScreenInfo(
  'في يوم من الأيام، كان الـ.... يستعد للذهاب إلى المدرسة',
  schoolImageUrl,
  [
    StoryOption('أسد', lionScreen),
    StoryOption('تنين', dragonScreen),
  ],
);

const ridingText = 'ثم ركب .... وانطلق نحو مدرسته';
const lionImageUrl =
    'https://i.pinimg.com/originals/91/57/77/91577778e55112ef95b7840fb2bd900c.png';
final lionScreen = ScreenInfo(
  ridingText,
  lionImageUrl,
  [
    StoryOption('سيارته', carLionScreen),
    StoryOption('دراجته', bikeLionScreen),
  ],
);
const dragonImageUrl =
    'https://i.pinimg.com/originals/4e/a1/f3/4ea1f362fb7fc49a4f0c73bf5a8737ae.png';
final dragonScreen = ScreenInfo(
  ridingText,
  dragonImageUrl,
  [
    StoryOption('سيارته', carDragonScreen),
    StoryOption('دراجته', bikeDragonScreen),
  ],
);

const oldWomanText = 'وبينما هو في الطريق، التقى بعجوز تحمل حقائب ثقيلة';
const carLionImageUrl =
    'https://thumbs.dreamstime.com/b/lion-cartoon-driving-car-illustration-40962285.jpg';
const carDragonImageUrl =
    'https://thumbs.dreamstime.com/b/cartoon-dragon-driving-car-13035788.jpg';
const bikeLionImageUrl =
    'https://img.freepik.com/free-vector/cute-baby-lion-riding-bicycle_81257-72.jpg';
const bikeDragonImageUrl =
    'https://thumbs.dreamstime.com/b/fun-dragon-143899234.jpg';
final nextOptions = <StoryOption>[StoryOption('متابعة', helpedScreen)];
final carLionScreen = ScreenInfo(oldWomanText, carLionImageUrl, nextOptions);
final carDragonScreen =
    ScreenInfo(oldWomanText, carDragonImageUrl, nextOptions);
final bikeLionScreen = ScreenInfo(oldWomanText, bikeLionImageUrl, nextOptions);
final bikeDragonScreen =
    ScreenInfo(oldWomanText, bikeDragonImageUrl, nextOptions);

const helpingWomanImageUrl =
    'https://media.istockphoto.com/vectors/boy-helping-senior-woman-crossing-street-vector-drawing-vector-id1142545005';
final helpedScreen = ScreenInfo(
  'فحمل معها حقائبها وأوصلها إلى بيتها',
  helpingWomanImageUrl,
  [
    StoryOption('متابعة', schoolScreen),
  ],
);

const classroomImageUrl =
    'https://previews.123rf.com/images/yatate10/yatate101807/yatate10180700037/115075704-kids-classroom-illustration-of-happy-students-studying-in-classroom-.jpg';
final schoolScreen = ScreenInfo(
  'ثم وصل المدرسة متأخرًا، فكافئه معلمه على مساعدته العجوز',
  classroomImageUrl,
  [
    mainPageOption,
  ],
);
