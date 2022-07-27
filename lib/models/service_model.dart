class ServiceModel {
  double? categoryId;
  String? imageBase64;
  String? location;
  String? phoneNumber;

  ServiceModel(
      {this.categoryId, this.imageBase64, this.location, this.phoneNumber});

  ServiceModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    imageBase64 = json['imageBase64'];
    location = json['location'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = categoryId;
    data['imageBase64'] = imageBase64;
    data['location'] = location;
    data['phoneNumber'] = phoneNumber;
    return data;
  }
}