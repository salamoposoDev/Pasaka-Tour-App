import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/currency_format.dart';
import 'package:pasaka_tour_app/common/data/kuliner_data.dart';
import 'package:pasaka_tour_app/common/data/produk_favorit.dart';
import 'package:pasaka_tour_app/common/data/produk_umkm.dart';
import 'package:pasaka_tour_app/common/widgets/detail_page.dart';
import 'package:pasaka_tour_app/common/widgets/more_text_button.dart';
import 'package:pasaka_tour_app/common/widgets/new_detail_screen.dart';
import 'package:pasaka_tour_app/common/widgets/search_widget.dart';
import 'package:pasaka_tour_app/screens/kuliner/widgets/kuliner_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/favorit_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_detail_page.dart';

class KulinerPage extends StatelessWidget {
  const KulinerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Kuliner',
                style: GoogleFonts.poppins(fontSize: 28.sp),
              ),
              SizedBox(height: 20.h),
              SearchWidget(),
              SizedBox(height: 20.h),
              Text(
                'Produk Favorit',
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    produkFavoritData.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 16.h),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.r),
                                  child: Image.asset(
                                    produkFavoritData[index]['image'],
                                    height: 100,
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
                                      produkFavoritData[index]['title'],
                                      style: GoogleFonts.roboto(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Unggulan',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  MoreTextButton(),
                ],
              ),
              SizedBox(height: 8.h),
              StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                children: List.generate(kulinerData.length, (index) {
                  return KulinerCard(
                    title: kulinerData[index]['title'],
                    image: kulinerData[index]['image'],
                    // price: kulinerData[index]['price'],
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewDetailScreen(
                            title: kulinerData[index]['title'],
                            image: kulinerData[index]['image'],
                            description: kulinerData[index]['description'],
                          ),
                        )),
                  );
                }),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk UMKM',
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  MoreTextButton(),
                ],
              ),
              SizedBox(height: 8.h),
              StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                children: List.generate(produkUmkmData.length, (index) {
                  return KulinerCard(
                    title: produkUmkmData[index]['title'],
                    image: produkUmkmData[index]['image'],
                    price: produkUmkmData[index]['price'],
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewDetailScreen(
                            title: produkUmkmData[index]['title'],
                            image: produkUmkmData[index]['image'],
                            description: produkUmkmData[index]['description'],
                          ),
                        )),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
