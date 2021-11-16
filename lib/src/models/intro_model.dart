part of models;

class IntroModel {
  final String? imagePath;
  final String? title;
  final String? desc;

  IntroModel({this.imagePath, this.title, this.desc});

  static List<IntroModel> data = [
    IntroModel(
      imagePath: 'images/intro1.jpg',
      title: 'Beautiful Birds',
      desc:
          'Different type of Birds\nrestaurants and fast delivery to your\ndoorstep',
    ),
    IntroModel(
      imagePath: 'images/intro2.jpg',
      title: 'Birds You Like most',
      desc: 'Fast food delivery to your home, office\nwhere you are',
    ),
    IntroModel(
      imagePath: 'images/intro3.jpg',
      title: 'Buy & Sell Birds Here',
      desc:
          'Real time tracking of your food on the app\nonce you placed the order',
    ),
  ];
}
