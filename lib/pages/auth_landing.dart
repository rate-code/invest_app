import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthLandingScreen extends StatefulWidget {
  const AuthLandingScreen({super.key});

  @override
  State<AuthLandingScreen> createState() => _AuthLandingScreenState();
}

class _AuthLandingScreenState extends State<AuthLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Container(
              height: 50.h,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(horizontal: 17.5.w, vertical: 5.h),
              width: 100.w,
              child: const Image(
                image: AssetImage("assets/images/auth_landing.png"),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Stay on top of your\nfinance with us.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "We are your new financial Advisors\nto recommend the best investments for you.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 60,
                            width: 100.w,
                            decoration: BoxDecoration(
                              color: const Color(0xFF31A062),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "Create Account",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            color: const Color(0xFF31A062),
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}