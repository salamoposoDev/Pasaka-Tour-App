import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreTextButton extends StatelessWidget {
  const MoreTextButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Row(
        children: [
          Text(
            'Lainnya',
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.blue.shade700),
          ),
          Icon(
            Icons.keyboard_arrow_right,
            color: Colors.blue.shade700,
          )
        ],
      ),
    );
  }
}
