import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
       this.title,
      this.onPressed,
      this.color,
      this.height,
      this.width,
      this.fontSize, this.widget});
  final String? title;
  final void Function()? onPressed;
  final Color? color;
  final double? height;
  final double? width;
  final double? fontSize;
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            backgroundColor: color ?? const Color(0xff313131),
            fixedSize: Size(width ?? double.maxFinite, height ?? 67)),
        onPressed: onPressed,
        child:widget ?? Text(title ??"",
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
              color: Colors.white,
              fontSize: fontSize ?? 18,
              fontWeight: FontWeight.w600,
            ))));
  }
}