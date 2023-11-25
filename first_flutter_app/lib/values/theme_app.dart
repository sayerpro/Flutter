import 'package:first_flutter_app/values/colors_app.dart';
import 'package:first_flutter_app/values/text_styles_app.dart';
import 'package:flutter/material.dart';

TextTheme get textTheme => TextTheme(
      titleMedium: subTitle1,
      bodyMedium: bodyText2,
      bodyLarge: bodyText1,
      headlineMedium: headLine4,
      displaySmall: headLine3,
      bodySmall: caption,
    );

TextTheme get textThemeDark => TextTheme(
      titleMedium: subTitleDark,
      bodyMedium: bodyText2Dark,
      bodyLarge: bodyTextDark,
      headlineMedium: headLine4Dark,
      displaySmall: headLine3Dark,
      bodySmall: captionDark,
    );

IconThemeData get iconThemeData => IconThemeData(color: icon1Color);

IconThemeData get iconThemeData2 => iconThemeData.copyWith(color: icon2Color);

IconThemeData get iconThemeDataDark => IconThemeData(color: iconDark);
