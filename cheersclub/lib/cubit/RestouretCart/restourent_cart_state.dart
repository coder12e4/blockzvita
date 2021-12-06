part of 'restourent_cart_cubit.dart';

@immutable
abstract class RestourentCartState {}

class RestourentCartInitial extends RestourentCartState {}

class RestourentCartLoading extends RestourentCartState {}

class RestourentCartSuccess extends RestourentCartState {
  final List<Cart>? cart;
  final double? sutotal;
  final double? vat21;
  final String? total;

  RestourentCartSuccess(this.cart, this.sutotal, this.vat21, this.total);
}

class RestourentCartFailed extends RestourentCartState {
  final String error;

  RestourentCartFailed(this.error);
}

class RestourentCartdeleteloding extends RestourentCartState {}

class RestourentCartdeletSuccess extends RestourentCartState {}

class RestourentCartFaileddeleting extends RestourentCartState {}
