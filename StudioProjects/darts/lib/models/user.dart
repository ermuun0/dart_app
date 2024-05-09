class UserModel{
  static List<User> itemNames = [];

  User getById(int id) => User(id, itemNames[id % itemNames.length] as String, 0);
}

class User {
  int id;
  String userName;
  int points;

  User(this.id, this.userName,this.points);
}