import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          print('click');
        },
        child: Container(
          width: 150,
          height: 50,
          color: Colors.black,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Text(
                'Menu',
                style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Spacer(),
              Icon(
                Icons.menu,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
