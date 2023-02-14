import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({super.key});

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _toController = TextEditingController();
    String date = DateTime.now().toString();
    TextEditingController _mainController = TextEditingController();
    TextEditingController _fromController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: TextField(
                  controller: _toController,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'To who?',
                  ),
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                date,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 12,
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
                hintText: 'Write Letter Here',
              ),
              style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 12,
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
                hintText: 'From who?',
              ),
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
