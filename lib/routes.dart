import 'package:flutter/material.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/screens/add_note/add_note.dart';
import 'package:lettre/screens/home_screen/home_screen.dart';
import 'package:lettre/screens/inbox_screen/inbox_screen.dart';
import 'package:lettre/screens/letter_screen/extract_letter.dart';
import 'package:lettre/screens/letter_screen/letter_reader.dart';
import 'package:lettre/screens/letter_screen/letter_screen.dart';
import 'package:lettre/shared_widgets/letter.dart';

Map<String, WidgetBuilder> routes = {
  RoutesConstants.homescreen: (context) => HomeScreen(),
  RoutesConstants.inboxscreen: (context) => InboxScreen(),
  RoutesConstants.letterscreen: (context) => LetterScreen(),
  RoutesConstants.letterreader: (context) => const ExtractLetterReaderScreen(),
  RoutesConstants.addnote: (context) => AddNote(),
};
