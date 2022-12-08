import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lettre/constants/color_constants.dart';
import 'package:lettre/constants/routes_constants.dart';
import 'package:lettre/core/utils/custom_text_style.dart';
import 'package:lettre/locator.dart';
import 'package:lettre/routes.dart';

import '../../constants/image_constants.dart';

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
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Lettre",
              style: GoogleFonts.roboto(
                  color: ColorConstants.pinetree,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesConstants.inboxscreen);
                },
                icon: Image.asset(
                  ImageConstants.handmaiden_pin,
                ))
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: 500,
                    decoration: const BoxDecoration(
                      color: ColorConstants.beige,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
