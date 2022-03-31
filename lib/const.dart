import 'package:flutter/material.dart';

const String i = 'assets/images/';
int theme(int lightInText, int darkInText, BuildContext context) =>
    Theme.of(context).scaffoldBackgroundColor == const Color(dark)
        ? darkInText
        : lightInText;
const black = 0xff000000;
const white = 0xffffffff;
const light = 0xffE5E5E5;
const dark = 0xff0C0C0C;
const darkInText = 0xffECECEC;
const lightInText = 0xff161616;
