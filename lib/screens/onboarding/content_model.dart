class UnbordingContent {
  String image;
  String title;
  String discription;
  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Understanding Statistics',
      image: 'assets/images/onboarding1.png',
      discription: 'It\'s hard to tell the truth without staistics'),
  UnbordingContent(
      title: 'Reminders and Notifications',
      image: 'assets/images/onboarding2.png',
      discription: 'Don\'t forget to take care of your self'),
  UnbordingContent(
      title: 'Earn Coins and Coupons',
      image: 'assets/images/onboarding3.png',
      discription: 'Keep Calm, Earn coins and reedem coupons'),
];
