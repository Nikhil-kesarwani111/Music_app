import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_rock/config/routes/routes_name.dart';
import 'package:music_rock/view/Home_screen/Widgets/Hero_section/hero_widgets/header/header_widget/textform_field_decoration.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(
          height: 44.h,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.servicefilter);
                  },
                  cursorColor: Colors.grey[500],
                  decoration: textFormFieldDecoration(),
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.syne(
                    color: Colors.grey,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(width: 20.w),
              CircleAvatar(
                radius: 17.r,
                backgroundColor: const Color(0xFFFFFFFF),
                child: Icon(
                  Icons.person,
                  color: Colors.purple,
                  size: 29.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
