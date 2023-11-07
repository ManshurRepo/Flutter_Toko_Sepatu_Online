import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/responses/products_response_model.dart';
import '../../widgets/cart_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const _Initial()) {
    on<_Add>((event, emit) {
      final currentState = state as _Loaded;
      // bila produk ada di cart, maka tambahkan quantity
      final index = currentState.carts
          .indexWhere((element) => element.product.id == event.cart.product.id);
      if (index >= 0) {
        currentState.carts[index].quantity += 1;
      } else {
        currentState.carts
            .add(CartModel(product: event.cart.product, quantity: 1));
      }
      emit(_Loaded(currentState.carts));
    });

    on<_Remove>((event, emit) {
      final currentState = state as _Loaded;
      // bila produk ada di cart, maka  quantity dikurangi
      final index = currentState.carts
          .indexWhere((element) => element.product.id == event.cart.product.id);
      if (index >= 0) {
        currentState.carts[index].quantity -= 1;
        if (currentState.carts[index].quantity <= 0) {
          currentState.carts.removeAt(index);
        }
      }
      emit(_Loaded(currentState.carts));
    });
  }
}