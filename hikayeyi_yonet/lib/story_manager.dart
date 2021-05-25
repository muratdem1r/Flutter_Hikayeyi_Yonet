import 'story.dart';

class StoryManager {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
            'Hiçliğin ortasında, cep telefonu sinyali olmayan dolambaçlı bir yolda arabanızın lastiği patladı. Otostop yapmaya karar veriyorsunuz. Paslı bir kamyonet yanınızda durur. Ruhsuz gözleri olan şapkalı bir adam yolcu kapısını senin için açar ve "Arabaya mı ihtiyacın var evlat?" diye sorar.',
        choice1: 'Atlayacağım. Yardım için teşekkürler!',
        choice2: 'Önce katil olup olmadığını sorsan iyi olur.'),
    Story(
        storyTitle: 'Soruya cevap vermeden yavaşça başını salladı.',
        choice1: 'En azından dürüst. İçeri gireceğim.',
        choice2: 'Bekle, lastiğin nasıl değiştirileceğini biliyorum.'),
    Story(
        storyTitle:
            'Arabayı sürmeye başladığınızda yabancı, annesiyle olan ilişkisi hakkında konuşmaya başlar. Her dakika daha da kızıyor. Torpido gözünü açmanızı istiyor. İçeride kanlı bir bıçak, iki kesik parmak ve Zeki Müren\'in bir kasedini bulacaksınız. Torpido gözüne uzanıyor.',
        choice1: 'Zeki Müren\'i seviyorum! Kasedi ona ver.',
        choice2: 'O ya da ben! Bıçağı al ve onu bıçakla.'),
    Story(
        storyTitle:
            'Ne? Bir polis çıktı! Çoğu yetişkin yaş grubu için trafik kazalarının kaza sonucu ölümlerin ikinci önde gelen nedeni olduğunu biliyor muydunuz?',
        choice1: 'Tekrar Başlat',
        choice2: ''),
    Story(
        storyTitle:
            'Korkuluktan geçerken ve aşağıdaki çentikli kayalara doğru ilerlerken, sizin bulunduğunuz arabayı sürerken birini bıçaklamanın şüpheli bilgeliğini yansıtırsınız.',
        choice1: 'Tekrar Başlat',
        choice2: ''),
    Story(
        storyTitle:
            '"Çoktan unuturdum ben seni, çoktan.. Ah bu şarkıların gözü kör olsun" kıtalarını mırıldanırken katille bağ kuruyorsun. Seni bir sonraki kasabada bırakır. Gitmeden önce, cesetleri atacak iyi bir yer olup olmadığını soruyor. Cevabınız: "İskeleyi deneyin".',
        choice1: 'Tekrar Başlat',
        choice2: '')
  ];
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0) {
      if (choiceNumber == 1)
        _storyNumber = 2;
      else if (choiceNumber == 2) _storyNumber = 1;
    } else if (_storyNumber == 1) {
      if (choiceNumber == 1)
        _storyNumber = 2;
      else if (choiceNumber == 2) _storyNumber = 3;
    } else if (_storyNumber == 2) {
      if (choiceNumber == 1)
        _storyNumber = 5;
      else if (choiceNumber == 2) _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      _restart();
    }
  }

  void _restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5)
      return false;
    else
      return true;
  }
}
