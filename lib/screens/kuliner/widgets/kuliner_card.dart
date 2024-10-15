import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/currency_format.dart';

class KulinerCard extends StatelessWidget {
  const KulinerCard(
      {super.key,
      required this.title,
      required this.image,
      this.price,
      this.onTap});
  final String title;
  final String image;
  final int? price;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 2.h),
            // Text(
            //   formatRupiah(price),
            //   style: GoogleFonts.roboto(
            //     fontSize: 14.sp,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
