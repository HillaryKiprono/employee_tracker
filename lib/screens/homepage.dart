import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'leave_form.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(60),bottomLeft: Radius.circular(20))),
        elevation: 0.2,
      ),
      body: Column(
        children: [
          Container(
            // height: 200,
            color: Color(0xFFE9EFF0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 150,
                  ),
                  Text(
                    "Employee Panel",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: GoogleFonts.poppins()
                          .fontFamily, // Apply Poppins font
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 20),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Kewasco Company",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400)),
                          const VerticalDivider(
                            thickness: 3,
                          ),
                          Text(
                            "Leave & Absence",
                            style:
                                GoogleFonts.poppins(fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Container(
            height: 400,
            decoration: const BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveForm())),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xFF061E5C),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.article_outlined,color: Colors.white,size: 80,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Request a Leave",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
                                Text("Please complete this form 1 day in advance to request a leave",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.white),)

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),

                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFF061E5C),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                         Icon(Icons.inventory_2_outlined,color: Colors.white,size: 80,),
                        Expanded(
                              child: Text("Track Absence",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.white,fontSize: 20),),
                          ),

                      ],
                    ),
                  ),

                  SizedBox(height: 10,),

                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xFF061E5C),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Icon(Icons.email_outlined,color: Colors.white,size: 40,),
                          Expanded(
                              child: Center(child: Text("Email HR",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),)),
                            ),

                        ],
                      ),
                    ),
                  ),

                  Text("Announcement",style: GoogleFonts.pacifico(fontWeight: FontWeight.w600,fontSize: 20,color: Color(0xFF061E5C)),),
                  IntrinsicHeight(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 38.0),
                      child: Row(
                        children: [
                          Text("Disconnection Notice",style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w600,color: Color(0xFF061E5C)),),
                          const VerticalDivider(thickness: 2,color: Color(0xFF061E5C),),
                          Text("Nov 11, Thursday",style: GoogleFonts.abel(fontWeight: FontWeight.w600,color: Color(0xFF061E5C)),),
                        ],

                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text("Revenue Collection",style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w600,color: Color(0xFF061E5C),fontSize: 16),),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
