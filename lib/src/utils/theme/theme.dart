import 'package:login_ui_template_flutter/src/utils/theme/widget_themes/elevated_buttom_theme.dart';
import 'package:login_ui_template_flutter/src/utils/theme/widget_themes/outlined_buttom_theme.dart';
import 'package:login_ui_template_flutter/src/utils/theme/widget_themes/primarySwatch_theme.dart';
import 'package:login_ui_template_flutter/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:login_ui_template_flutter/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {

  //Para hacer el constructor private
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      textTheme: TTextTheme.lightTextTheme,
      primarySwatch: TPrimarySwatchTheme.TecsciColor,
      outlinedButtonTheme: TOutlinedButtomTheme.lightOutlinedButtomTheme,
      elevatedButtonTheme: TElevatedButtomTheme.lightElevatedButtomTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: TTextTheme.darkTextTheme,
      primarySwatch: TPrimarySwatchTheme.TecsciColor,
      outlinedButtonTheme: TOutlinedButtomTheme.darkOutlinedButtomTheme,
      elevatedButtonTheme: TElevatedButtomTheme.darkElevatedButtomTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}