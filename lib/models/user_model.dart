class UserModel {
  String uuid;
  String name;
  String email;

  UserModel({this.uuid,this.name,this.email});

  UserModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    name = json['name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['name'] = this.name;
    data['email'] = this.email;
    return data;
  }
}