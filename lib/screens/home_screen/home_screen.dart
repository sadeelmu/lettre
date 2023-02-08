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
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Letters To Chloe",
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
          ],
        ),
      ),
    );
  }
}
