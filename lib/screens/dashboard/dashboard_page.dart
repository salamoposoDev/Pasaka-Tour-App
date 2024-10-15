import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/data/dashboard_data.dart';
import 'package:pasaka_tour_app/common/widgets/new_detail_screen.dart';
import 'package:pasaka_tour_app/common/widgets/search_widget.dart';
import 'package:pasaka_tour_app/common/widgets/image_slider.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_detail_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pasaka',
                        style: GoogleFonts.poppins(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.green.shade900,
                        ),
                      ),
                      Text(
                        'Temukan Wisata Favoritmu!',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.green.shade900,
                    size: 36.h,
                  )
                ],
              ),
              SizedBox(height: 16.h),
              const SearchWidget(),
              SizedBox(height: 20.h),
              ListView.builder(
                  itemCount: dashboardData.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: WisataCard(
                        image: dashboardData[index]['image'],
                        title: dashboardData[index]['title'],
                        description: dashboardData[index]['description'],
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NewDetailScreen(
                                      image: dashboardData[index]['image'],
                                      title: dashboardData[index]['title'],
                                      description: dashboardData[index]
                                          ['description'],
                                    ))),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
