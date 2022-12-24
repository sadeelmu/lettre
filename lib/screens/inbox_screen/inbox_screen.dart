import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/locator.dart';
import 'package:lettre/shared_widgets/letter.dart';

import '../../core/utils/custom_text_style.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: ColorConstants.pursianblue,
          ),
        ),
        title: Text(
          "Letters Recieved",
          style: GoogleFonts.roboto(
            color: ColorConstants.pursianblue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Text(
            "View Letter from your loved ones",
            style: GoogleFonts.roboto(
              color: ColorConstants.pursianblue,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Letters").snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasData) {
                  return GridView.builder(
                    itemBuilder: (context, index) {
                      return letter(() {
                        Navigator.pushNamed(
                            context, RoutesConstants.letterscreen);
                      }, snapshot.data!.docs[index]);
                    },
                    itemCount: snapshot.data!.docs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                  );
                }
                return Text("There is no letters avaliable",
                    style: GoogleFonts.nunito(
                      color: ColorConstants.pursianblue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
