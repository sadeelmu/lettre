import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/screens/add_note/letter_editor.dart';
import 'package:lettre/shared_widgets/button.dart';
import 'package:intl/intl.dart';

import '../../constants/image_constants.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _toController = TextEditingController();
    String date = DateFormat('dd/MM/yyyy').format(DateTime.now()).toString();
    //
    //if i want to add the time i can format as such
    //  String date =
    //  DateFormat('dd/MM/yyyy  HH:mm').format(DateTime.now()).toString();
    //

    TextEditingController _mainController = TextEditingController();
    TextEditingController _fromController = TextEditingController();
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
              "Letters To",
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
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Add Note",
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    height: 500,
                    width: 550,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    height: 490,
                    width: 480,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: TextField(
                                  controller: _toController,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'To:',
                                  ),
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                "Date: $date",
                                style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                          Flexible(
                            child: TextField(
                              controller: _mainController,
                              keyboardType: TextInputType.multiline,
                              maxLines: 5,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Letter content:',
                              ),
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(height: 40),
                          Flexible(
                            child: TextField(
                              controller: _fromController,
                              keyboardType: TextInputType.name,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'From:',
                              ),
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 20,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ImageConstants.heart),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(
              buttonLabel: "Add Note",
              buttonCallBack: () async {
                FirebaseFirestore.instance.collection("Letters").add({
                  "letter_content": _mainController.text,
                  "letter_to": _toController.text,
                  "letter_date": date,
                  "letter_from": _fromController.text,
                }).then((value) {
                  print(value.id);
                  Navigator.pushNamed(context, RoutesConstants.inboxscreen);
                }).catchError(
                    (error) => print("Failed to add new Note due to $error"));
              },
              labelColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
