class home {
  List<Gallery>? gallery;

  home({this.gallery});

  home.fromJson(Map<String, dynamic> json) {
    if (json['gallery'] != null) {
      gallery = <Gallery>[];
      json['gallery'].forEach((v) {
        gallery!.add(new Gallery.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.gallery != null) {
      data['gallery'] = this.gallery!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Gallery {
  String? image;
  String? title;
  String? content;
  String? date;

  Gallery({this.image, this.title, this.content, this.date});

  Gallery.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    content = json['content'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['title'] = this.title;
    data['content'] = this.content;
    data['date'] = this.date;
    return data;
  }
}
