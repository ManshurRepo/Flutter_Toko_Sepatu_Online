part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.add(Products cart) = _Add;
  const factory CartEvent.remove(CartModel cart) = _Remove;
}
