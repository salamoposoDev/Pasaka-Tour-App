import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/currency_format.dart';

class WisataAlamCard extends StatelessWidget {
  const WisataAlamCard({
    super.key,
    required this.image,
    this.price,
    required this.title,
    this.onTap,
  });
  final String image;
  final int? price;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              12.r,
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Hero(
                tag: title,
                child: Image.asset(
                  image,
                  height: 180.h,
                  width: 200.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Text(
                  //       price != 0 ? formatRupiah(price!) : 'Gratis',
                  //       style: GoogleFonts.roboto(
                  //           fontSize: 14.sp,
                  //           fontWeight: FontWeight.bold,
                  //           color: Colors.green.shade800),
                  //     ),
                  //     SizedBox(height: 8.h),
                  //     Text(
                  //       price != 0 ? '/orang' : '',
                  //       style: GoogleFonts.roboto(
                  //           fontSize: 12.sp,
                  //           fontWeight: FontWeight.normal,
                  //           color: Colors.grey.shade600),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}
