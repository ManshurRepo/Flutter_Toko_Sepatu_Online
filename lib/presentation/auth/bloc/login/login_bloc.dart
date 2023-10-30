import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_fic9_ecommerce_app/data/datasource/auth_remote_datasource.dart';
import 'package:flutter_fic9_ecommerce_app/data/models/requests/login_request_model.dart';
import 'package:flutter_fic9_ecommerce_app/data/models/responses/auth_respons_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response = await AuthRemoteDatasource().login(event.data!);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Succes(r)),
      );
    });
  }
}
