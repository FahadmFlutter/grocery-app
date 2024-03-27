import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:nectar/Repository/Login_Api.dart';

import '../../Model_Classes/LogInModel.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginApi logInApi = LoginApi();
  late LogInModel logInModel;

  LoginBloc() : super(LoginInitial()) {
    on<FetchLogin>((event, emit) async{
      emit(LoginBlocLoading());
      try{
        logInModel =await logInApi.getLogIn(email: event.email, passWord: event.passWord);
        emit(LoginBlocLoaded());
      }catch(e){
        print(e);
        emit(LoginBlocError());
      }
    });
  }
}
