class homemodel {
  String? profileImage;
  String? name;
  Dashboard? card;
  List<Dashlist>? dashlist;
  List<Productlist>? productlist;

  homemodel(
      {this.profileImage,
        this.name,
        this.card,
        this.dashlist,
        this.productlist});

  homemodel.fromJson(Map<String, dynamic> json) {
    profileImage = json['profile image'];
    name = json['name'];
    card = json['card'] != null ? new Dashboard.fromJson(json['card']) : null;
    if (json['dashlist'] != null) {
      dashlist = [];
      json['dashlist'].forEach((v) {
        dashlist!.add(new Dashlist.fromJson(v));
      });
    }
    if (json['productlist'] != null) {
      productlist = [];
      json['productlist'].forEach((v) {
        productlist!.add(new Productlist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['profile image'] = this.profileImage;
    data['name'] = this.name;
    if (this.card != null) {
      data['card'] = this.card!.toJson();
    }
    if (this.dashlist != null) {
      data['dashlist'] = this.dashlist!.map((v) => v.toJson()).toList();
    }
    if (this.productlist != null) {
      data['productlist'] = this.productlist!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Dashboard {
  String? month;
  int? amount;
  int? percentage;
  int? dailyTarget;

  Dashboard({this.month, this.amount, this.percentage, this.dailyTarget});

  Dashboard.fromJson(Map<String, dynamic> json) {
    month = json['month'];
    amount = json['amount'];
    percentage = json['percentage'];
    dailyTarget = json['daily target'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['month'] = this.month;
    data['amount'] = this.amount;
    data['percentage'] = this.percentage;
    data['daily target'] = this.dailyTarget;
    return data;
  }
}

class Dashlist {
  String? image;
  String? catName;
  int? amount;
  String? date;

  Dashlist({this.image, this.catName, this.amount, this.date});

  Dashlist.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    catName = json['cat_name'];
    amount = json['amount'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['cat_name'] = this.catName;
    data['amount'] = this.amount;
    data['date'] = this.date;
    return data;
  }
}

class Productlist {
  String? icon;
  String? text;
  String? color;
  String? id;

  Productlist({this.icon, this.text, this.color, this.id});

  Productlist.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    text = json['text'];
    color = json['color'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['text'] = this.text;
    data['color'] = this.color;
    data['id'] = this.id;
    return data;
  }
}
