import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_fic9_ecommerce_app/data/models/requests/register_request_model.dart';
import 'package:flutter_fic9_ecommerce_app/data/models/responses/auth_respons_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../../../data/datasource/auth_remote_datasource.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(const _Initial()) {
    on<_Register>((event, emit) async {
      emit(const _Loading());
      final response = await AuthRemoteDatasource().register(event.data!);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Success(r)),
      );
    });
  }
}
