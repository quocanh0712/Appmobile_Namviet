


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final VoidCallback? onDeleted;

  const CustomChip({
    Key? key,
    required this.label,
    this.onDeleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 200.w,
        minWidth: 50.w,
        minHeight: 20.h,
        maxHeight: 20.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey.withOpacity(0.4),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 0.5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: onDeleted != null ? Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              label,
              style: GoogleFonts.openSans(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
              textAlign:  TextAlign.left,
            ) ,
            SizedBox(width: 8),
            if (onDeleted != null)
              GestureDetector(
                onTap: onDeleted,
                child: Icon(
                  Icons.close,
                  size: 16,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ) : Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.sp,vertical: 1.w ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Text(
                  label,
                  style: GoogleFonts.openSans(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                  ),
                  textAlign:  TextAlign.center,
                ),
                SizedBox(height: 2.sp,)
              ],
            ) ,

          ],
        ),
      ),
    );
  }
}