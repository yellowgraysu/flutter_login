import 'package:flutter/material.dart';
import 'package:flutter_login/src/models/login_user_type.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldUtils {
  static String getAutofillHints(LoginUserType userType) {
    switch (userType) {
      case LoginUserType.name:
        return AutofillHints.username;
      case LoginUserType.phone:
        return AutofillHints.telephoneNumber;
      case LoginUserType.email:
      default:
        return AutofillHints.email;
    }
  }

  static TextInputType getKeyboardType(LoginUserType userType) {
    switch (userType) {
      case LoginUserType.name:
        return TextInputType.name;
      case LoginUserType.phone:
        return TextInputType.number;
      case LoginUserType.email:
      default:
        return TextInputType.emailAddress;
    }
  }

  static Icon getPrefixIcon(LoginUserType userType, Color? iconColor) {
    switch (userType) {
      case LoginUserType.name:
        return Icon(FontAwesomeIcons.circleUser, color: iconColor);
      case LoginUserType.phone:
        return Icon(FontAwesomeIcons.squarePhoneFlip, color: iconColor);
      case LoginUserType.email:
      default:
        return Icon(
          FontAwesomeIcons.solidEnvelope,
          color: iconColor,
          size: 20,
        );
    }
  }

  static String getLabelText(LoginUserType userType) {
    switch (userType) {
      case LoginUserType.name:
        return "Name";
      case LoginUserType.phone:
        return "Phone";
      case LoginUserType.email:
      default:
        return "Email";
    }
  }
}
