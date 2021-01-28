class NewsModel {
  String uuid;
  String title;
  String description;
  String img;
  String date;
  String active;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  NewsModel(
      {this.uuid,
      this.title,
      this.description,
      this.img,
      this.date,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  NewsModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    title = json['title'];
    description = json['description'];
    img = json['img'];
    date = json['date'];
    active = json['active'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['title'] = this.title;
    data['description'] = this.description;
    data['img'] = this.img;
    data['date'] = this.date;
    data['active'] = this.active;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}