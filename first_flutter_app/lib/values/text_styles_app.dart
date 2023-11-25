import 'package:first_flutter_app/values/colors_app.dart';
import 'package:first_flutter_app/values/dimens_app.dart';
import 'package:flutter/material.dart';

TextStyle get textBase => TextStyle(color: textColor, fontFamily: "Teko");

TextStyle get subTitle1 => textBase.copyWith(fontWeight: FontWeight.w400, fontSize: subTitle1SP);
TextStyle get subTitleDark => subTitle1.copyWith(color: textDark);

TextStyle get bodyText1 => textBase.copyWith();
TextStyle get bodyTextDark => bodyText1.copyWith(color: textDark);

TextStyle get bodyText2 => textBase.copyWith(color: textColor2, fontWeight: FontWeight.bold);
TextStyle get bodyText2Dark => bodyText2.copyWith(color: textDark);

TextStyle get headLine4 => textBase.copyWith();
TextStyle get headLine4Dark => headLine4.copyWith(color: textDark);

TextStyle get headLine3 => textBase.copyWith();
TextStyle get headLine3Dark => headLine3.copyWith(color: textDark);

TextStyle get caption => textBase.copyWith();
TextStyle get captionDark => caption.copyWith(color: textDark);
