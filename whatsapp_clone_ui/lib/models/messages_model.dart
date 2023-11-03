class MessagesModel {
  final String contactName;
  final String messageBody;
  final String contactTime;
  final String imagePath;

  MessagesModel(
      this.contactName, this.messageBody, this.contactTime, this.imagePath);

  static List<MessagesModel> messages = [
    MessagesModel("Aishwarya Kasthala", "You are a genius", "6:40 pm",
        "lib/assets/aish-dp.jpg"),
    MessagesModel("Dad", "You can do it!", "5:00 pm", "lib/assets/shiva.jpg"),
    MessagesModel(
        "Amma", "Take care, jagratta!", "4:30 pm", "lib/assets/shiva-2.jpeg"),
    MessagesModel(
        "Rahul", "Hi bujji, whatsup? ", "4:00 pm", "lib/assets/wallpaper.jpg"),
    MessagesModel(
        "Abhi", "Hi eh, ssup? ", "3:30 pm", "lib/assets/wallpaper-2.jpg"),
    MessagesModel(
        "Jaya", "Bodi, em dng?", "5:30 pm", "lib/assets/shiva-fin.jpeg"),
    MessagesModel("Ajay", "Hey Aishu, em chestunav? ", "3:00 pm",
        "lib/assets/Birthday.png"),
    MessagesModel(
        "Sunny", "Bondam wassup?", "2:30 pm", "lib/assets/shiva-3.jpeg"),
    MessagesModel(
        "Suppi", "em dng eh? ", "2:00 pm", "lib/assets/wallpaper.jpg"),
    MessagesModel("Three musketeers", "Check this out!! ", "1:30 pm",
        "lib/assets/shiva-2.jpeg"),
    MessagesModel("Cousins group", "How are you all? ", "1:00 pm",
        "lib/assets/shiva-3.jpeg"),
    MessagesModel("Ammamma", "The best ", "12:30 pm", "lib/assets/shiva.jpg"),
    MessagesModel("Amulya", "Hi akkai ", "12:00 pm", "lib/assets/Birthday.png"),
    MessagesModel(
        "Aamu", "enti sangatulu ", "11:30 am", "lib/assets/shiva-fin.jpeg"),
    MessagesModel(
        "Random name", "Unknown Unknown? ", "11:00 am", "lib/assets/shiva.jpg"),
  ];
}
