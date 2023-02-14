import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/core/utils/custom_text_style.dart';
import 'package:lettre/locator.dart';
import 'package:lettre/routes.dart';
import 'package:lettre/screens/add_note/letter_editor.dart';

import '../../constants/image_constants.dart';
import '../../shared_widgets/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
              onPressed: () {
                Navigator.pushNamed(context, RoutesConstants.inboxscreen);
              },
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    height: 360,
                    width: 450,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    height: 350,
                    width: 440,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "Demo App",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
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
              buttonLabel: "Read letters",
              buttonCallBack: () {
                Navigator.pushNamed(context, RoutesConstants.inboxscreen);
              },
              labelColor: Colors.white,
            ),
            SizedBox(height: 20),
            CustomButton(
              buttonLabel: "Write letter",
              buttonCallBack: () {
                Navigator.pushNamed(context, RoutesConstants.addnote);
              },
              labelColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
