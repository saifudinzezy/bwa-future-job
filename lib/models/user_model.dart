class UserModel {
  String id;
  String email;
  String password;
  String name;
  String goal;

  UserModel(
      {required this.id,
      required this.email,
      required this.password,
      required this.name,
      required this.goal});

  //mengambil value dari json ke varibael
  UserModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    email = json['email'];
    password = json['password'];
    name = json['name'];
    goal = json['goal'];
  }

  //mengembalikan data ke json
  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'email': email,
      'password': password,
      'name': name,
      'goal': goal,
    };
  }
}
