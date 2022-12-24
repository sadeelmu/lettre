import 'package:flutter/material.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/screens/home_screen/home_screen.dart';
import 'package:lettre/screens/inbox_screen/inbox_screen.dart';
import 'package:lettre/screens/letter_screen/letter_screen.dart';

Map<String, WidgetBuilder> routes = {
  RoutesConstants.homescreen: (context) => HomeScreen(),
  RoutesConstants.inboxscreen: (context) => InboxScreen(),
  RoutesConstants.letterscreen: (context) => LetterScreen(),
};
