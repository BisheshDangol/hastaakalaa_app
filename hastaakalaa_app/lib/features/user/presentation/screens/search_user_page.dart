import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hastaakalaa_app/core/wrapper/search_user_wrapper.dart';
import 'package:hastaakalaa_app/features/user/domain/entities/user_entity.dart';
import 'package:hastaakalaa_app/features/user/presentation/bloc/search_user_watcher_bloc/search_user_watcher_bloc.dart';
import 'package:hastaakalaa_app/injection_container.dart';

class SearchUserPage extends StatelessWidget {
  const SearchUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<SearchUserWatcherBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Flexible(child: SearchUserTextFormField(), flex: 3),
                      SearchButton(),
                    ],
                  ),
                ),
              ),
              PageBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

class PageBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchUserWatcherBloc, SearchUserWatcherState>(
      builder: (context, state) {
        return Expanded(
          child: ListView(
            children: [
              state.failureOrSuccess == null
                  ? Container()
                  : state.failureOrSuccess!.fold(
                      (l) => CircularProgressIndicator(),
                      (r) => UserContainer(r))
            ],
          ),
        );
      },
    );
  }
}

class UserContainer extends StatelessWidget {
  final List<UserEntity> userList;
  UserContainer(this.userList);
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: userList
          .map((e) => SearchUserWrapper(
                userEntity: e,
              ))
          .toList(),
    );
  }
}

class SearchUserTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(180, 98, 30, 1), width: 2.0),
          borderRadius: BorderRadius.circular(5.0),
        ),
        labelText: 'Search',
        labelStyle: TextStyle(color: Color.fromRGBO(180, 98, 30, 1)),
        errorStyle: TextStyle(fontSize: 13),
      ),
      onChanged: (value) {
        context
            .read<SearchUserWatcherBloc>()
            .add(SearchUserWatcherEvent.changedKeyword(keyword: value));
      },
      validator: (_) => context.read<SearchUserWatcherBloc>().state.showErrors
          ? context
              .read<SearchUserWatcherBloc>()
              .state
              .keywordTitle
              .fold((e) => e.msg.toString(), (_) => null)
          : null,
    );
  }
}

class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context
            .read<SearchUserWatcherBloc>()
            .add(SearchUserWatcherEvent.pressedSearch());
      },
      icon: Icon(Icons.search),
    );
  }
}
