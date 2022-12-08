import 'package:flutter/material.dart';

extension Size on double {
  double ofScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height * this;
  }

  double ofScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width * this;
  }
}
