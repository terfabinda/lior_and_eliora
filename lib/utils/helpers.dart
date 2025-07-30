import 'package:flutter/material.dart';

double getRelativeHeight(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.height * percentage;
}

double getRelativeWidth(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.width * percentage;
}
