class EventModel {
  String uuid;
  String title;
  String description;
  String date;
  String active;
  String createdAt;
  String updatedAt;
  Null deletedAt;

  EventModel(
      {this.uuid,
      this.title,
      this.description,
      this.date,
      this.active,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  EventModel.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    title = json['title'];
    description = json['description'];
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
    data['date'] = this.date;
    data['active'] = this.active;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}