class NewsModel {
  List<Data>? data;
  NewsModel({this.data});

  NewsModel.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    return data;
  }
}

class Data {
  int? id;
  String? title;
  String? resume;
  String? description;
  String? createdAt;
  int? views;
  int? publish;
  int? likes;
  String? menu;
  String? submenu;
  String? category;
  String? subcategory;
  String? source;
  String? regenciesAsRegency;
  String? province;
  String? image;
  String? editor;

  Data(
      {this.id,
      this.title,
      this.resume,
      this.description,
      this.createdAt,
      this.views,
      this.publish,
      this.likes,
      this.menu,
      this.submenu,
      this.category,
      this.subcategory,
      this.source,
      this.regenciesAsRegency,
      this.province,
      this.image,
      this.editor});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    resume = json['resume'];
    description = json['description'];
    createdAt = json['created_at'];
    views = json['views'];
    publish = json['publish'];
    likes = json['likes'];
    menu = json['menu'];
    submenu = json['submenu'];
    category = json['category'];
    subcategory = json['subcategory'];
    source = json['source'];
    regenciesAsRegency = json['regencies as regency'];
    province = json['province'];
    image = json['image'];
    editor = json['editor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['resume'] = this.resume;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['views'] = this.views;
    data['publish'] = this.publish;
    data['likes'] = this.likes;
    data['menu'] = this.menu;
    data['submenu'] = this.submenu;
    data['category'] = this.category;
    data['subcategory'] = this.subcategory;
    data['source'] = this.source;
    data['regencies as regency'] = this.regenciesAsRegency;
    data['province'] = this.province;
    data['image'] = this.image;
    data['editor'] = this.editor;
    return data;
  }
}
