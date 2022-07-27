class aboutsModel {
  String? title;
  String? body;

  aboutsModel({this.title, this.body});

  aboutsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }

}