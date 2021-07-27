import 'package:flutter/material.dart';

import 'components/login_screen.dart';
import 'components/registration_screen.dart';
import 'components/reset_password_screen.dart';

List<Widget> authScreenPageContainer = <Widget>[
  LoginScreen(),
  RegistrationScreen(),
  ResetPasswordScreen(),
];
