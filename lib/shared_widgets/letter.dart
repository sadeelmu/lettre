import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';
import 'package:lettre/constants/image_constants.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/core/utils/extentions/size_extention.dart';

import '../core/utils/custom_text_style.dart';
import '../locator.dart';

Widget letter(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          Container(
            height: 145,
            width: 190,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "To: ${doc["letter_to"]}",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "From: ${doc["letter_from"]}",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 65,
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
  );
}


// FlipCard(
//     speed: 300,
//     back: Stack(
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.all(10),
//           margin: EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: Colors.black,
//             borderRadius: BorderRadius.all(Radius.circular(5)),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "to: ${doc["letter_to"]}",
//                     style: GoogleFonts.roboto(
//                       color: ColorConstants.ivory,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                   Text(
//                     doc["letter_date"],
//                     style: GoogleFonts.roboto(
//                       color: ColorConstants.ivory,
//                       fontSize: 16,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ],
//               ),
//               Text(
//                 doc["letter_content"],
//                 style: GoogleFonts.roboto(
//                   color: ColorConstants.ivory,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 overflow: TextOverflow.ellipsis,
//               ),
//               Text(
//                 "from: ${doc["letter_from"]}",
//                 style: GoogleFonts.roboto(
//                   color: ColorConstants.ivory,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//     front: Container(
//       padding: EdgeInsets.all(10),
//       margin: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.all(Radius.circular(5)),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "POSTE",
//                 style: GoogleFonts.roboto(
//                   color: ColorConstants.ivory,
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//               Image.asset(
//                 ImageConstants.jordan_stamp,
//                 scale: 30,
//               ),
//             ],
//           ),
//           Text(
//             "to: ${doc["letter_to"]}",
//             style: GoogleFonts.roboto(
//               color: ColorConstants.ivory,
//               fontSize: 18,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           Text(
//             "from: ${doc["letter_from"]}",
//             style: GoogleFonts.roboto(
//               color: ColorConstants.ivory,
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );