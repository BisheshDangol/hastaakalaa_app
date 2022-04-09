import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';

class ArtDetailPage extends StatelessWidget {
  final ArtEntity artEntity;
  const ArtDetailPage({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFEDF0F6),
      appBar: AppBar(
        // backgroundColor: AppColors.kBgColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SafeArea(
              child: Container(
                height: MediaQuery.of(context).size.height * .35,
                padding: const EdgeInsets.only(bottom: 30),
                width: double.infinity,
                child: Image.network(
                  artEntity.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 40, right: 14, left: 14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        artEntity.status,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            artEntity.title,
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Rs. ${artEntity.price}',
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        artEntity.description,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Genre',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Genre',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
