import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/application/token_shared_preferences.dart';
import 'package:hastaakalaa_app/core/wrapper/card_wrapper.dart';
import 'package:hastaakalaa_app/features/art/presentation/bloc/buy_art_watcher_bloc/buy_art_watcher_bloc.dart';
import 'package:hastaakalaa_app/features/payment/presentation/bloc/create_payment_form_bloc/create_payment_form_bloc.dart';
import '../../../../injection_container.dart';

class BuyArtPage extends StatelessWidget {
  const BuyArtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<BuyArtWatcherBloc>()
            ..add(BuyArtWatcherEvent.retrieveArtList()),
        ),
        BlocProvider(
          create: (context) => sl<CreatePaymentFormBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Color(0xFFEDF0F6),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              PageBuilder(),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.red,
                    Colors.white,
                  ],
                )),
                height: MediaQuery.of(context).size.height * 0.22,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Hastaakalaa',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text('Log out'),
                onTap: () async {
                  await Future.delayed(
                    const Duration(milliseconds: 500),
                  );
                  TokenSharedPrefernces.instance.removeToken("token");

                  Navigator.of(context, rootNavigator: true)
                      .popAndPushNamed('splash');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  const PageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BuyArtWatcherBloc, BuyArtWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Container();
          },
          loading: (_) => CircularProgressIndicator(),
          loaded: (e) {
            return Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<BuyArtWatcherBloc>()
                    ..add(BuyArtWatcherEvent.retrieveArtList());
                },
                child: ListView(
                  children:
                      e.artList.map((e) => CardWrapper(artEntity: e)).toList(),
                ),
              ),
            );
          },
          failed: (e) {
            return Container();
          },
        );
      },
    );
  }
}
