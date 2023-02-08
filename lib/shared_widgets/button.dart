import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';
import 'package:lettre/core/utils/extentions/size_extention.dart';

import '../core/utils/custom_text_style.dart';
import '../locator.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonLabel,
      required this.buttonCallBack,
      this.buttonColor = Colors.black,
      this.labelColor = Colors.white,
      this.icon,
      this.isTextCenterd = false});
  final String buttonLabel;
  final Widget? icon;
  final Color? labelColor;
  final VoidCallback buttonCallBack;
  final Color? buttonColor;
  final bool isTextCenterd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 1.0.ofScreenWidth(context),
        height: 0.06.ofScreenHeight(context),
        child: ElevatedButton(
          onPressed: () {
            buttonCallBack();
          },
          style: ButtonStyle(
            shape: MaterialStateProperty.all(StadiumBorder()),
            backgroundColor: MaterialStateProperty.all(buttonColor),
          ),
          child: icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    icon!,
                    Text(
                      buttonLabel,
                      textAlign: isTextCenterd ? TextAlign.center : null,
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container()
                  ],
                )
              : Center(
                  child: Text(
                    buttonLabel,
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
