import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/widgets/custom_sliver_appbar.dart';

class NewDetailScreen extends StatelessWidget {
  const NewDetailScreen(
      {super.key,
      required this.title,
      required this.image,
      required this.description});
  final String title;
  final String image;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppbar(
            image: image,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.roboto(
                        fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    'Deskripsi:',
                    style: GoogleFonts.roboto(fontSize: 16.sp),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    description,
                    style: GoogleFonts.poppins(fontSize: 14.sp),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
