class RestourentKart {
  List<Cart>? cart;
  double? sutotal;
  double? vat21;
  String? total;

  RestourentKart({this.cart, this.sutotal, this.vat21, this.total});

  RestourentKart.fromJson(Map<String, dynamic> json) {
    if (json['cart'] != null) {
      cart = [];
      json['cart'].forEach((v) {
        cart!.add(new Cart.fromJson(v));
      });
    }
    sutotal = json['sutotal'];
    vat21 = json['vat_21'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cart != null) {
      data['cart'] = this.cart!.map((v) => v.toJson()).toList();
    }
    data['sutotal'] = this.sutotal;
    data['vat_21'] = this.vat21;
    data['total'] = this.total;
    return data;
  }
}

class Cart {
  int? id;
  int? userId;
  int? productId;
  int? restaurantId;
  String? orderType;
  int? quantity;
  String? createdAt;
  String? updatedAt;
  String? itemPrice;
  String? price;

  Cart(
      {this.id,
      this.userId,
      this.productId,
      this.restaurantId,
      this.orderType,
      this.quantity,
      this.createdAt,
      this.updatedAt,
      this.itemPrice,
      this.price});

  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    restaurantId = json['restaurant_id'];
    orderType = json['order_type'];
    quantity = json['quantity'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    itemPrice = json['item_price'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['product_id'] = this.productId;
    data['restaurant_id'] = this.restaurantId;
    data['order_type'] = this.orderType;
    data['quantity'] = this.quantity;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['item_price'] = this.itemPrice;
    data['price'] = this.price;
    return data;
  }
}
