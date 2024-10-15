import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/data/wisata_alam_data.dart';
import 'package:pasaka_tour_app/common/data/wisata_budaya_data.dart';
import 'package:pasaka_tour_app/common/data/wisata_favorit_data.dart';
import 'package:pasaka_tour_app/common/data/wisata_kuliner_data.dart';
import 'package:pasaka_tour_app/common/widgets/more_text_button.dart';
import 'package:pasaka_tour_app/common/widgets/new_detail_screen.dart';
import 'package:pasaka_tour_app/common/widgets/search_widget.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/favorit_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_alam_page.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_budaya_page.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_detail_page.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_kuliner_page.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wisata',
                  style: GoogleFonts.poppins(fontSize: 28.sp),
                ),
                SizedBox(height: 16.h),
                SearchWidget(),
                SizedBox(height: 20.h),
                Text(
                  'Banyak dikunjungi',
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
                      wisataFavoritData.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: FavoritCard(
                            image: wisataFavoritData[index]['image'],
                            title: wisataFavoritData[index]['title'],
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
                      'Wisata Alam',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    MoreTextButton(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WisataAlamPage())),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: WisataCard(
                            title: itemsWisataAlam[index]['title'],
                            image: itemsWisataAlam[index]['image'],
                            description: itemsWisataAlam[index]['description'],
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewDetailScreen(
                                          title: itemsWisataAlam[index]
                                              ['title'],
                                          image: itemsWisataAlam[index]
                                              ['image'],
                                          description: itemsWisataAlam[index]
                                              ['description'],
                                        ))),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wisata Budaya',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    MoreTextButton(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WisataBudayaPage())),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ...List.generate(
                      wisataBudayaData.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: WisataCard(
                            title: wisataBudayaData[index]['title'],
                            image: wisataBudayaData[index]['image'],
                            description: wisataBudayaData[index]['description'],
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewDetailScreen(
                                          title: wisataBudayaData[index]
                                              ['title'],
                                          image: wisataBudayaData[index]
                                              ['image'],
                                          description: wisataBudayaData[index]
                                              ['description'],
                                        ))),
                          ),
                        );
                      },
                    ),
                  ]),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wisata Kuliner',
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    MoreTextButton(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WisataKulinerPage())),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ...List.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: WisataCard(
                            title: wisataKulinerData[index]['title'],
                            image: wisataKulinerData[index]['image'],
                            description: wisataKulinerData[index]
                                ['description'],
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NewDetailScreen(
                                          title: wisataKulinerData[index]
                                              ['title'],
                                          image: wisataKulinerData[index]
                                              ['image'],
                                          description: wisataKulinerData[index]
                                              ['description'],
                                        ))),
                          ),
                        );
                      },
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
