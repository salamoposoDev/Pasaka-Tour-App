import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                'Profile',
                style: GoogleFonts.poppins(fontSize: 28.sp),
              ),
              SizedBox(height: 16.h),
              Container(
                padding: EdgeInsets.all(4.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        'lib/assets/images/profile1.jpeg',
                        fit: BoxFit.cover,
                        scale: 25.h,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Yeye Suhaety',
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          '10 Januari 1983',
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          'yeyen.suhaety@gmail.com',
                          style: GoogleFonts.roboto(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Judul Penelitian',
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Pengembangan Digital Local Tourism Manajement Sistem(DLTMS) Berbasis Mobile Android: Strategi Marketing Wisata Budaya Di Kabupaten Dompu',
                style: GoogleFonts.roboto(fontSize: 16.sp),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16.h),
              Text(
                'Biografi Singkat',
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 8.w),
              Text(
                '''
        Yeye Suhaety adalah seorang dosen profesional pada bidang manajemen di STIE Yapis Dompu, dan Direktur CV.Eksotik Tambora. Lahir di Kabupaten Dompu pada tanggal 10 Januari 1983. Merupakan anak kedua dari pasangan Bpk.H.Ishaka dan Ibu Hj.Siti Nuraeni. Kedua orang tuanya adalah pensiunan Pegawai Negeri Sipil (PNS).
        
        Ketika berumur 7 tahun, ia memulai pendidikan di SDN Inpres Potu II Dompu, kemudian setelah lulus melanjutkan pendidikan di SMPN 1 Dompu ditahun 1995. Selepas lulus dari SMP ditahun 1998, dia hijrah ke Mataram dan melanjutkan pendididkannya di SMUN 1 Mataram jurusan IPA. Melanjutkan studi strata 1 di Jurusan Fisika, Fakultas Matematika dan Ilmu Pengetahuan Alam, Universitas Udayana Bali. Bidang minat yang diambil adalah Biofisika. Kemudian pada tahun 2008, ia melanjutkan studi pasca sarjana di bidang manajemen, Fakultas Ekonomi dan Bisnis, Universitas Diponegoro Semarang.
        
        Mulai mengajar di STIE Yapis Dompu sejak tahun 2010, dengan keahlian dibidang manajemen pemasaran. Selain mengajar dikampus, juga aktif sebagai pendamping kewirausahaan serta mengisi berbagai pelatihan/bimtek/workshop dibidang kewirausahaan dan pemasaran. Dia juga seorang pengusaha dibidang industri kopi lokal dan produk perawatan kulit natural.
        
        Memiliki hobby memasak dan menginginkan hidupnya selalu bermanfaat baik dikeluarga maupun masyarakat luas. Saat ini tinggal di Kabupaten Dompu bersama kedua orang tua dan keluarga besar serta suami yang berprofesi sebagai PNS. Dia bisa dihubungi pada alamat email yeyen.suhaety@gmail.com.
        ''',
                style: GoogleFonts.poppins(fontSize: 14.sp),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
