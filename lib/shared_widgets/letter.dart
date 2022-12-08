import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';
import 'package:lettre/constants/image_constants.dart';
import 'package:lettre/core/utils/extentions/size_extention.dart';

import '../core/utils/custom_text_style.dart';
import '../locator.dart';

Widget letter(Function()? onTap, QueryDocumentSnapshot doc) {
  return FlipCard(
    back: InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorConstants.ivory,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  doc["letter_to"],
                  style: GoogleFonts.roboto(
                    color: ColorConstants.marroon,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  doc["letter_date"],
                  style: GoogleFonts.roboto(
                    color: ColorConstants.marroon,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Text(
              doc["letter_content"],
              style: GoogleFonts.roboto(
                color: ColorConstants.marroon,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              doc["letter_from"],
              style: GoogleFonts.roboto(
                color: ColorConstants.marroon,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ),
    front: InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: ColorConstants.ivory,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "POSTE",
                  style: locator<CustomTextStyle>().synpoStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset(ImageConstants.jordan_stamp),
              ],
            ),
            Text(
              doc["letter_to"],
              style: GoogleFonts.roboto(
                color: ColorConstants.marroon,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              doc["letter_content"],
              style: GoogleFonts.roboto(
                color: ColorConstants.marroon,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              doc["letter_from"],
              style: GoogleFonts.roboto(
                color: ColorConstants.marroon,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
