import 'package:bloc/bloc.dart';
import 'package:cheersclub/cubit/repository/RestourentkartRepository.dart';
import 'package:cheersclub/models/cart/RestourentKartModel.dart';
import 'package:meta/meta.dart';
import 'package:result_type/result_type.dart';

part 'restourent_cart_state.dart';

class RestourentCartCubit extends Cubit<RestourentCartState> {
  List<Cart>? cart;
  double? sutotal;
  double? vat21;
  String? total;

  final RestorentKartRepository restorentKartRepository;
  RestourentCartCubit(this.restorentKartRepository)
      : super(RestourentCartInitial());

  Future<void> loadProducts(String? restourent_id) async {
    emit(RestourentCartLoading());
    Result? result =
        await restorentKartRepository.restourentList(restourent_id);
    if (result.isSuccess) {
      sutotal = result.success['sutotal']!;
      vat21 = result.success['vat_21']!;
      total = result.success['total']!;

      dynamic kart_items = result.success['cart'];
      cart = productsList(kart_items);
      emit(RestourentCartSuccess(cart, sutotal, vat21, total));
    } else {
      emit(RestourentCartFailed("Something went wrong"));
    }
  }

  Future<void> deleteproduct(String? restourent_id) async {
    emit(RestourentCartLoading());
    Result? result =
        await restorentKartRepository.DeleteKertItem(restourent_id);
    if (result.isSuccess) {
      emit(RestourentCartdeletSuccess());
    } else {
      emit(RestourentCartFailed("Something went wrong"));
    }
  }
}

List<Cart> productsList(List data) {
  List<Cart> productslist = [];
  var length = data.length;
  print(length.toString());

  for (int i = 0; i < length; i++) {
    Cart products = Cart(
        id: data[i]['id']!,
        userId: data[i]['user_id']!,
        productId: data[i]['product_id']!,
        restaurantId: data[i]['restaurant_id']!,
        orderType: data[i]['order_type']!,
        quantity: data[i]['quantity']!,
        createdAt: data[i]['created_at']!,
        updatedAt: data[i]['updated_at']!,
        itemPrice: data[i]['item_price']!.toString(),
        price: data[i]['price']!.toString());
    productslist.add(products);
  }
  return productslist;
}
