import 'story.dart';

class StoryBrain{
  List<Story> _storyData = [
    Story(
        storyTitle:
        '4 yıl uğraşılan mobil uygulama çıkartıldı fakat hiç tutmadı. Bütün çalışanların morali bozuk.',
        choice1: 'Sıfırdan yeni bir projeye başla.',
        choice2: 'Hali hazırda olan projeyi güncelle.'),
    Story(
        storyTitle: 'Proje güncelleme fikri çalışanları bir nebzede olsa rahatlattı. Sıfırdan proje yapmak hiç biri istemiyor. Fakat sıfırdan proje yapılmazsa piyasadaki uygulama çokta yükseklere çıkmayabilir.',
        choice1: 'Sıfırdan proje yapılabilir, bu riski almalıyız.',
        choice2: 'Sıfırdan bir projeyi kaldırabilcek durumda değiliz.'),
    Story(
        storyTitle:
        'Sıfırdan projeye başlanma fikri çalışanları biraz gerdi, anonim biri tarafından hem sıfırdan tekrar başlansın hemde piyasaya sürülen proje güncellensin fikri geldi.',
        choice1: 'Anonim tarafından gelen fikre uy. Her ne kadar çok maaliyetli olsada bu riske değer.',
        choice2: 'Sadece sıfırdan projeye başla. Piyasadaki olan proje çekilsin.'),
    Story(
        storyTitle:
        'Uygulamayı güncelleyerek, olumsuz yanlar hemen hemen giderildi. Eskisi gibi olmasada bir geri dönüş alınıyor.',
        choice1: 'Yeniden başlat',
        choice2: ''),
    Story(
        storyTitle:
        'Sıfırdan projeye başlandı fakat hali hazırda piyasada olan proje piyasadan çekilince şirket unutuldu. Biraz kullanıcı kaybı yaşandı fakat sıfırdan yapılan uygulama piyasaya sürüldüğünde yinede eskisinden çok daha iyi bir durum oldu.',
        choice1: 'Yeniden başlat',
        choice2: ''),
    Story(
        storyTitle:
        'Çok zordu şirket için fakat piyasaya sürülen yeni uygulama çok tuttu ve geri dönüşleri çok iyi oldu.',
        choice1: 'Yeniden başlat',
        choice2: '')
  ];

  String getStory(){
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1(){
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2(){
    return _storyData[_storyNumber].choice2;
  }
  int _storyNumber = 0;

  void nextStory(int userChoice){
    if (userChoice == 1 && _storyNumber==0){

      _storyNumber=2;
    }
    else if (userChoice == 2 && _storyNumber==0){
      _storyNumber=1;
    }
    else if (userChoice == 1 && _storyNumber==1){
      _storyNumber=2;
    }
    else if (userChoice == 2 && _storyNumber==1){
      _storyNumber=3;
    }
    else if (userChoice == 1 && _storyNumber==2){
      _storyNumber=5;
    }
    else if (userChoice == 2 && _storyNumber==2){
      _storyNumber=4;
    }
    else if (userChoice==2 || userChoice==1 || _storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5){
      restart();
    }
  }
  void restart(){
    _storyNumber=0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
    }return false; }  }