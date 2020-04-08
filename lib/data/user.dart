class User {
  final int id;
  final String name;
  final String img;

  const User(
    this.id,
    this.name,
    this.img,
  );
}

class Users {
  static const current = User(0, "Alex", "");

  static const ella = User(1, "Ella", "assets/ella.jpg");
  static const christina = User(2, "Christina", "assets/christina.jpg");
  static const james = User(3, "James", "assets/james.jpg");
  static const sophia = User(4, "Sophia", "assets/sophia.jpg");
  static const olivia = User(5, "Olivia", "assets/olivia.jpg");
  static const ann = User(6, "Ann", "assets/ann.jpg");

  static const favorites = [
    ella,
    christina,
    james,
    sophia,
    olivia,
  ];

  static const all = [
    sophia,
    ella,
    james,
    olivia,
    ann,
    christina,
  ];
}
