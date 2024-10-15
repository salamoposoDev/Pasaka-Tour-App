import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pasaka_tour_app/common/data/wisata_kuliner_data.dart';
import 'package:pasaka_tour_app/common/widgets/new_detail_screen.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_alam_card.dart';
import 'package:pasaka_tour_app/screens/wisata/widgets/wisata_detail_page.dart';

class WisataKulinerPage extends StatelessWidget {
  const WisataKulinerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Wisata Kuliner'),
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
                children: List.generate(wisataKulinerData.length, (index) {
                  return WisataAlamCard(
                    image: wisataKulinerData[index]['image'],
                    // price: 10000,
                    title: wisataKulinerData[index]['title'],
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewDetailScreen(
                                  title: wisataKulinerData[index]['title'],
                                  image: wisataKulinerData[index]['image'],
                                  description: wisataKulinerData[index]
                                      ['description'],
                                ))),
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
