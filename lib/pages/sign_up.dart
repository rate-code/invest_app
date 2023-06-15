import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  height: AppBar().preferredSize.height,
                  width: 100.w,
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.black,
                      size: 20.sp,
                    ),
                  ),
                ),
                Text(
                  "Create an account",
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 21.sp,
                  ),
                ),
                Text(
                  "Invest and double your income now",
                  style: GoogleFonts.dmSans(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 85.w,
                  height: 55,
                  child: _textField("Full Name", true),
                ),
                SizedBox(height: 2.5.h),
                SizedBox(
                  width: 85.w,
                  height: 55,
                  child: _textField("Email Address", true),
                ),
                SizedBox(height: 2.5.h),
                SizedBox(
                  width: 85.w,
                  height: 55,
                  child: _textField("Password", false),
                ),
                SizedBox(height: 2.5.h),
                Container(
                  height: 60,
                  width: 85.w,
                  decoration: BoxDecoration(
                    color: const Color(0xFF31A062),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.5.h),
                Text(
                  "Already have an account?",
                  style: GoogleFonts.dmSans(
                      color: const Color(0xFF31A062),
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _textField(String placeholder, bool border) {
    return TextFormField(
      cursorColor: Colors.grey,
      cursorHeight: 15,
      obscureText: !border,
      decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: GoogleFonts.dmSans(
            color: Colors.grey.shade500,
            fontSize: 15.sp,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                BorderSide(color: border ? Colors.grey : Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide:
                BorderSide(color: border ? Colors.grey : Colors.transparent),
          )),
    );
  }
}


/*
    THANK YOU.
    LIKE, SHARE AND SUBSCRIBE.
    Please find the code[github repo] in description below..
 */