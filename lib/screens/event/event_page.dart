import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/data/event_data.dart';
import 'package:pasaka_tour_app/common/widgets/search_widget.dart';
import 'package:pasaka_tour_app/screens/event/widgets/event_card.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Event',
                style: GoogleFonts.poppins(
                  fontSize: 28.sp,
                ),
              ),
              SizedBox(height: 20.h),
              const SearchWidget(),
              SizedBox(height: 20.h),
              Text(
                'Semua Event',
                style: GoogleFonts.poppins(
                    fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8.h),
              ...List.generate(eventData.length, (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: EventCard(
                    title: eventData[index]['title'],
                    image: eventData[index]['image'],
                    description: eventData[index]['description'],
                    date: eventData[index]['date'],
                    by: eventData[index]['by'],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
