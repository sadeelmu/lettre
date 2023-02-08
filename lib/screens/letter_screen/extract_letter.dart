import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/screens/letter_screen/letter_reader.dart';

import '../../constants/image_constants.dart';

class ExtractLetterReaderScreen extends StatelessWidget {
  const ExtractLetterReaderScreen({super.key});
  static const routeName = '/extractLetter';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as QueryDocumentSnapshot;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Letter From ${args["letter_from"]}",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                ImageConstants.tattoo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
