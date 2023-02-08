import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';

import '../../constants/image_constants.dart';
import '../../shared_widgets/letter.dart';

class LetterScreen extends StatelessWidget {
  const LetterScreen({super.key});

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
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "",
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
      body: Container(),
    );
  }
}
// Container(
//       child: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection("Letters").snapshots(),
//         builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator(
//                 color: ColorConstants.brownStamp,
//               ),
//             );
//           }
//           if (snapshot.hasData) {
//             return GridView.builder(
//               itemBuilder: (context, index) {
//                 return letter(() {}, snapshot.data!.docs[index]);
//               },
//               itemCount: snapshot.data!.docs.length,
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 4,
//               ),
//             );
//           }
//           return Text("There is no letters avaliable",
//               style: GoogleFonts.nunito(
//                 color: ColorConstants.coffee,
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ));
//         },
//       ),
//     );