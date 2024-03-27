import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Repository/Signup_Api.dart';

import '../../Model_Classes/SignUpModel.dart';

part 'SignUP_event.dart';
part 'SignUp_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpApi signUpApi = SignUpApi();
  late SignUpModel signUpModel;

  SignUpBloc() : super(SignUpInitial()) {
    on<FetchSignUp>((event, emit) async {
      emit(SignUpBlocLoading());
      try {
        signUpModel = await signUpApi.getSignUp(
            userName: event.userName,
            email: event.email,
            passWord: event.passWord,
            phone: event.phone);
        emit(SignUpBlocLoaded());
      } catch (e) {
        print(e);
        emit(SignUpBlocError());
      }
    });
  }
}
