class OnBoardingModel{
  String? imageURL;
  String? title;
  String? Description;
  List? extraButton;

  OnBoardingModel({this.title,this.imageURL,this.Description,this.extraButton});
}

List<OnBoardingModel> contents = [
  OnBoardingModel(
    title: "Hi there!",
    Description: "Let’s complete a few steps together to get started.",
    imageURL: "assets/images/onBoarding/img.png",
  ),
  OnBoardingModel(
    title: "Access to Network",
    Description: "Make sure the app has access to your local network in order to connect to your TV or streaming device.",
    imageURL: "assets/images/onBoarding/img_1.png",
  ),
  OnBoardingModel(
    title: "How are you planning to use the app?",
    Description: "",
    extraButton: ["Home","Office","Both"],
    imageURL: "assets/images/onBoarding/img.png",
  ),
  OnBoardingModel(
    title: "Same Wi-Fi",
    Description: "Before we begin, please make sure your devices are on the same Wi-Fi network.",
    imageURL: "assets/images/onBoarding/img_3.png",
  ),
  OnBoardingModel(
    title: "Let’s set up",
    Description: "Please wait while we’re setting up the connection. This process will finish shortly",
    imageURL: "assets/images/onBoarding/img_2.png",
  ),
];
