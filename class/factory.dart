void main() {
  final user = User.fromJson({"name": "John"});
  print(user.name);
}

class User {
  User({required this.name}); // ここでjsとかのコンストラクターと同じように初期化する
  final String name; // ここでjsとかのプロパティと同じように初期化する

  factory User.fromJson(dynamic json) {
    // rubyでいうself.みたいな感じ
    return User(name: json["name"]);
  }
}
