import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pasaka_tour_app/common/data/wisata_alam_data.dart';
import 'package:pasaka_tour_app/common/data/wisata_budaya_data.dart';
import 'package:pasaka_tour_app/common/widgets/new_detail_screen.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_alam_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_detail_page.dart';

class WisataBudayaPage extends StatelessWidget {
  const WisataBudayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Wisata Budaya'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: List.generate(wisataBudayaData.length, (index) {
                    return WisataAlamCard(
                      image: wisataBudayaData[index]['image'],
                      // price: wisataBudayaData[index]['price'],
                      title: wisataBudayaData[index]['title'],
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NewDetailScreen(
                            title: wisataBudayaData[index]['title'],
                            image: wisataBudayaData[index]['image'],
                            description: wisataBudayaData[index]['description'],
                          ),
                        ),
                      ),
                    );
                  }))
            ],
          ),
        ),
      ),
    );
  }
}
