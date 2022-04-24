import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hastaakalaa_app/features/art/domain/entities/art_entity.dart';
import 'package:hastaakalaa_app/features/comment/presentation/screens/comment_page.dart';
import 'package:hastaakalaa_app/features/payment/presentation/screens/khalti_main_page.dart';

class ArtDetailPage extends StatelessWidget {
  final ArtEntity artEntity;
  const ArtDetailPage({Key? key, required this.artEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(text: 'Description'),
                      Tab(
                        text: 'Comments',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 40, right: 14, left: 14),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(30),
                            //   topRight: Radius.circular(30),
                            // ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      artEntity.title,
                                      style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    child: Text(
                                      'Rs. ${artEntity.price}',
                                      style: GoogleFonts.poppins(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Text(
                                'Description',
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                artEntity.description,
                                style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Genre',
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Text(
                                    artEntity.genre,
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(),
                              // Text(
                              //   'About the Artist',
                              //   style: GoogleFonts.poppins(
                              //     fontSize: 16,
                              //     fontWeight: FontWeight.w600,
                              //   ),
                              // ),
                              InkWell(
                                child: Container(
                                  child: Text(
                                    'Buy Artwork',
                                    style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 80,
                                  width: MediaQuery.of(context).size.height,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => KhaltiMainPage(
                                                artEntity: artEntity,
                                              )));
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    // second tab bar viiew widget
                    Container(
                        color: Colors.white,
                        child: CommentPage(artEntity: artEntity)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
