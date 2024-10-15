import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WisataDetailPage extends StatelessWidget {
  const WisataDetailPage({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });
  final String title;
  final String image;
  final String description;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: Container(
      //   color: Colors.grey.shade100,
      //   child: Padding(
      //     padding: EdgeInsets.all(20.h),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Text(
      //           'Gratis',
      //           style: GoogleFonts.poppins(
      //               fontSize: 26.sp,
      //               fontWeight: FontWeight.normal,
      //               color: Colors.blue.shade600),
      //         ),
      //         ElevatedButton(
      //           onPressed: () {},
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Text(
      //                 'Booking Tempat',
      //                 style: GoogleFonts.poppins(color: Colors.white),
      //               ),
      //               Icon(
      //                 Icons.keyboard_arrow_right,
      //                 color: Colors.white,
      //               ),
      //             ],
      //           ),
      //           style: ElevatedButton.styleFrom(
      //               fixedSize: Size(170.w, 45.h),
      //               backgroundColor: Colors.blue.shade600,
      //               textStyle: GoogleFonts.poppins(color: Colors.white),
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10.r),
      //               )),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenSize.height,
            width: screenSize.width.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 16,
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: title,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        size: 24,
                      ),
                      radius: 20,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.0),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: GoogleFonts.roboto(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                'Sumbawa NTB',
                                style: GoogleFonts.roboto(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300.h,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(16.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Deskripsi:',
                            style: GoogleFonts.roboto(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            description,
                            style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          // SingleChildScrollView(
                          //   scrollDirection: Axis.horizontal,
                          //   child: Row(
                          //     children: List.generate(
                          //       5,
                          //       (index) => Padding(
                          //         padding: EdgeInsets.only(left: 12.h),
                          //         child: Container(
                          //           height: 100,
                          //           width: 100,
                          //           decoration: BoxDecoration(
                          //               color: Colors.grey,
                          //               borderRadius: BorderRadius.circular(
                          //                 8.r,
                          //               )),
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // Container(
                          //   width: double.maxFinite,
                          //   height: 100,
                          //   padding: EdgeInsets.all(16.h),
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(10.r),
                          //     color: Colors.red,
                          //   ),
                          //   child: Column(
                          //     children: [],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
