import 'package:cheersclub/models/Restourent/MyGreetings.dart';

List<MyGreetings> myGreetingssList(List data) {
  List<MyGreetings> Greetings = [];
  var length = data.length;
  print(length.toString());

  for (int i = 0; i < length; i++) {
    MyGreetings greetings = MyGreetings(
        id: data[i]['id']!,
        userId: data[i]['user_id'],
        restaurantId: data[i]['restaurant_id'],
        paymentId: data[i]['payment_id'],
        price: data[i]['price'],
        userSecret: data[i]['user_secret'],
        restaurantSecret: data[i]['restaurant_secret'],
        deliveryDate: data[i]['delivery_date'],
        deliveryType: data[i]['delivery_type'],
        name: data[i]['name'],
        dialcode: data[i]['dialcode'],
        phone: data[i]['phone'],
        dialcode2: 00,
        phone2: 00,
        dialcode3: 00,
        phone3: 00,
        message: data[i]['message'],
        note: "Greetings",
        fileName: "filename",
        greetingKey: data[i]['greeting_key'],
        status: data[i]['status']!,
        paymentStatus: data[i]['payment_status'],
        createdAt: data[i]['created_at'],
        updatedAt: data[i]['updated_at']);
    Greetings.add(greetings);
  }
  return Greetings;
}
