class MessagesModel {
  final String contactName;
  final String messageBody;
  final String contactTime;
  final String imagePath;

  MessagesModel(
      this.contactName, this.messageBody, this.contactTime, this.imagePath);

  static List<MessagesModel> messages = [
    MessagesModel("Aishwarya Kasthala", "Hi How are you? ", "6:40 pm",
        "lib/assets/aish-dp.jpg"),
    MessagesModel(
        "Rahul Kasthala", "Hi Whatsup? ", "5:30 pm", "lib/assets/aish-pic.jpg"),
    MessagesModel(
        "Venkat Kasthala", "Take care ", "5:00 pm", "lib/assets/aish-pic2.jpg"),
    MessagesModel(
        "Anu Kasthala", "Love you amma ", "4:30 pm", "lib/assets/aish.png"),
    MessagesModel(
        "Abhigna", "Hi em dng? ", "4:00 pm", "lib/assets/aish-dp.jpg"),
    MessagesModel("Jaya", "bodi ssup? ", "3:30 pm", "lib/assets/aish-pic.jpg"),
    MessagesModel("Ajay", "Hey Aishu, em chestunav? ", "3:00 pm",
        "lib/assets/aish-pic2.jpg"),
    MessagesModel("Sunny", "Bondam wassup?", "2:30 pm", "lib/assets/aish.png"),
    MessagesModel("Suppi", "em dng eh? ", "2:00 pm", "lib/assets/aish-dp.jpg"),
    MessagesModel("Three musketeers", "Check this out!! ", "1:30 pm",
        "lib/assets/aish-pic.jpg"),
    MessagesModel("Cousins group", "How are you all? ", "1:00 pm",
        "lib/assets/aish-pic2.jpg"),
    MessagesModel("Ammamma", "the best ", "12:30 pm", "lib/assets/aish.png"),
    MessagesModel(
        "Amulya akka", "Hi akkai ", "12:00 pm", "lib/assets/aish-dp.jpg"),
    MessagesModel(
        "Aamukta", "enti sangatulu ", "11:30 am", "lib/assets/aish-pic2.jpg"),
    MessagesModel("Random name", "Unknown Unknown? ", "11:00 am",
        "lib/assets/aish-pic.jpg"),
  ];
}
