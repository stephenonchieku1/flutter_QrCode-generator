import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import  'package:qr_flutter/qr_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('QR CODE SCANNER V1.0'),
        backgroundColor: Colors.blue,
        leading: const Icon(IconlyLight.category,
        color: Colors.white,
        ),
        actions: const [
          Icon(IconlyLight.search,
          color: Colors.white,),
          SizedBox(
            width: 20,
          )
        ],
      ),
    body: Padding(padding: EdgeInsets.all(12.0),
    child: Column(
      children: [
        Text("Create a personal qr-code  for your brand ",
         style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold
          //color: Colors.white,
          )
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),

            ),
            child:  RepaintBoundary(
              key: qrkey,
              child: QrImageView(
                data: qrData,
                version: QrVersions.auto,
                size: 300,
                dataModuleStyle: QrDataModuleStyle(
                  dataModuleShape: QrDataModuleShape.circle,
                  color: Colors.black,
                ),),
            ),
          )

      ],
    ),
    ),
    );
  }
}