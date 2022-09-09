class ModUser {
  ModUser({
      this.id, 
      this.email, 
      this.password, 
      this.name, 
      this.goal,});

  ModUser.fromJson(dynamic json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    goal = json['goal'];
  }
  String id;
  String email;
  String password;
  String name;
  String goal;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['password'] = password;
    map['name'] = name;
    map['goal'] = goal;
    return map;
  }

}