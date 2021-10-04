class DataModel {
  final String title, description, type, city, date, image;
  final int numberMessage;
  const DataModel({
    required this.title,
    required this.description,
    required this.type,
    required this.city,
    required this.date,
    required this.image,
    required this.numberMessage,
  });
}

const List<DataModel> dataList = [
  DataModel(
    title: "RUNNING",
    description: "Your Full Marathan Traning Plan - 20 Weeks",
    type: "TRANING",
    city: "Legan",
    date: "May 20 2021",
    image: "assets/images/gym1.jpeg",
    numberMessage: 20,
  ),
  DataModel(
    title: "RUNNING",
    description: "Marathan Training Guide For (Tatal) Beginners",
    type: "TRANING",
    city: "Legan",
    date: "May 20 2021",
    image: "assets/images/gym2.jpeg",
    numberMessage: 5,
  ),
  DataModel(
    title: "RUNNING",
    description: "Your Full Marathan Traning Plan - 20 Weeks",
    type: "TRANING",
    city: "Legan",
    date: "May 20 2021",
    image: "assets/images/gym3.jpeg",
    numberMessage: 20,
  ),
  DataModel(
    title: "CARDIO",
    description: "Your Full Marathan Traning Plan - 20 Weeks",
    type: "TRANING",
    city: "Legan",
    date: "May 20 2021",
    image: "assets/images/gym4.jpeg",
    numberMessage: 20,
  ),
];
