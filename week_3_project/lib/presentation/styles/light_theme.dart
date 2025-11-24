import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme {
  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,


      primaryColor: const Color(0xFF6368D9),
      scaffoldBackgroundColor: Color(0xffF6F2FF),






 
      textTheme: TextTheme(
        headlineLarge:GoogleFonts.poppins(color: Color(0xff6368D9),fontWeight: FontWeight.bold,fontSize: 28,),
        headlineMedium: GoogleFonts.poppins(color: Color(0xff6368D9),fontWeight: FontWeight.w500,fontSize: 24,),
        bodyLarge: GoogleFonts.poppins(color: Color(0xffF6F2FF),fontWeight: FontWeight.w400,fontSize: 16,),
        bodyMedium: GoogleFonts.poppins(color: Color(0xff6368D9),fontWeight: FontWeight.w300,fontSize: 12,),
     bodySmall: GoogleFonts.poppins(color: Color(0xffffffff),fontWeight: FontWeight.w600,fontSize: 16,),
      ),


      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Color(0xffD1D0F9),
        hintStyle: TextStyle(color: Color(0xff6368D9)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(100),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Color(0xFF6368D9), width: 1),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
