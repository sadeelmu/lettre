import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';

import '../../shared_widgets/letter.dart';

class LetterScreen extends StatelessWidget {
  const LetterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("Letters").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(
                color: ColorConstants.pinetree,
              ),
            );
          }
          if (snapshot.hasData) {
            return GridView.builder(
              itemBuilder: (context, index) {
                return letter(() {}, snapshot.data!.docs[index]);
              },
              itemCount: snapshot.data!.docs.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            );
          }
          return Text("There is no letters avaliable",
              style: GoogleFonts.nunito(
                color: ColorConstants.coffee,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ));
        },
      ),
    );
  }
}
