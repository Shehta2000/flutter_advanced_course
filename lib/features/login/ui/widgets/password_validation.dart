// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_advanced_course/core/theming/colors.dart';
import 'package:flutter_advanced_course/core/theming/styles.dart';

import '../../../../core/helper/spacing.dart';

class PasswordValidation extends StatelessWidget {
  const PasswordValidation({
    super.key,
    required this.haslowerCase,
    required this.hasupperCase,
    required this.hasNumber,
    required this.hasSpecialChar,
    required this.hasMinlength,
  });

  final bool haslowerCase;
  final bool hasupperCase;
  final bool hasNumber;
  final bool hasSpecialChar;
  final bool hasMinlength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 8 characters', haslowerCase),
      verticalSpace(2),
        buildValidationRow('At least one uppercase letter', hasupperCase),
      verticalSpace(2),
        buildValidationRow('At least one number', hasNumber),
      verticalSpace(2),
        buildValidationRow('At least one special character', hasSpecialChar),
      verticalSpace(2),
        buildValidationRow('At least 8 characters', hasMinlength),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated) {
  return   Row(
    children: [
       const  CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorsManager.gray,
      ),
      horizontalSpace(6),
      Text(
        text,
        style: TextStyles.font13DarkBlueRegular.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
        decorationColor: Colors.green,
        decorationThickness: 2.0,
              color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue
        ),
      )
    ],
  );
}
