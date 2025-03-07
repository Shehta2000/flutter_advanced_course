import 'package:flutter/material.dart';

import '../../data/models/login_request_body.dart';
import '../../data/repos/login__repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';
class LoginCubit extends Cubit<LoginState> {
  final  LoginRepo _loginReol; 
  LoginCubit(this._loginReol ) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  
  void emitLoginStates(LoginRequestBody loginRequestBody)async {
       emit( const LoginState.loading());
       final response = await _loginReol.login(loginRequestBody);
      
       response.when(success: ( loginResponse) {
         emit(LoginState.success(loginResponse));

       }, 
       faliare: (error) {
         emit(LoginState.error(error:error.apiErrorModel.message ?? "" ));

       });
  } 
}
