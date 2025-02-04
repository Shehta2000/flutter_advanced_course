import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import 'password_validation.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndpassworState();
}

class _EmailAndpassworState extends State<EmailAndPassword> {
  
bool isObscureText = true;
late TextEditingController passwordController;
bool haslowerCase = false;
bool hasupperCase = false; 
bool hasNumber = false;
bool hasSpecialChar = false;
bool hasMinlength = false; 

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setUpControllerListener();
  }
    void setUpControllerListener() {
      passwordController.addListener(() {
        setState(() {
          hasMinlength = AppRegex.hasMinLength(passwordController.text);
          hasupperCase = AppRegex.hasUpperCase(passwordController.text);
          haslowerCase = AppRegex.hasLowerCase(passwordController.text);
          hasNumber = AppRegex.hasNumber(passwordController.text);
          hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        });
      });
    }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
           AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            validator: (value){
              if(value == null || value.isEmpty || !AppRegex.isEmailValid(value)){
                return 'Please enter a valid your email';
              }
              return null;
            },
          ),
          verticalSpace(16),
          AppTextFormField(
              controller: context.read<LoginCubit>().passwordController,
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter a valid your password';
                }
                return null;
              },
              hintText: 'Password',
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(
                  isObscureText ? Icons.visibility_off : Icons.visibility,
                  color: ColorsManager.mainBlue,
                ),
              )),
          verticalSpace(24),
           PasswordValidation(
              hasMinlength : hasMinlength,
              hasSpecialChar: hasSpecialChar,
              hasNumber: hasNumber,
              hasupperCase: hasupperCase,
              haslowerCase: haslowerCase
          ),
        ],
      ),
    );
  }
  
}
