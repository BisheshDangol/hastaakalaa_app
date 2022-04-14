import 'package:flutter/material.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/buy_art_page.dart';
import 'package:hastaakalaa_app/features/art/presentation/screens/sell_art_page.dart';

class MarketPlacePage extends StatelessWidget {
  const MarketPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        text: 'Buy Art',
                      ),
                      Tab(
                        text: 'Sell Art',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    BuyArtPage(),
                    SellArtPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('MarketPlace'),
        ),
      ),
    );
  }
}
