import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msbSaleApp/src/models/user.dart';
import 'package:msbSaleApp/src/blocs/get_user_bloc.dart';
import 'package:msbSaleApp/src/blocs/get_user_state.dart';
import 'package:msbSaleApp/src/blocs/user_event.dart';

class HomeListPage extends StatefulWidget {
  @override
  _HomeListPageState createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  GetUsersBloc _getUsersBloc;

  @override
  void initState() {
    super.initState();
    _getUsersBloc = GetUsersBloc();
  }

  @override
  Widget build(BuildContext context) {
    _getUsersBloc.dispatch(GetUsersEvent());
    return BlocProvider(
      builder: (context) => _getUsersBloc,
      child: Scaffold(
        body: BlocBuilder(
          bloc: _getUsersBloc,
          builder: (context, GetUsersState state) {
            if (state is GetUsersUnInitial)
              return Container();
            else if (state is GetUsersLoading)
              return Center(child: CircularProgressIndicator());
            else if (state is GetUsersSuccess)
              return _buildListUser(state.users);
            else {
              return Center(child: Text("Error"));
            }
          },
        ),
      ),
    );
  }

  Widget _buildListUser(List<User> users) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(users[index].avatar),
            radius: 30.0,
          ),
          title: Text(
            users[index].name,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          subtitle: Text(
            users[index].address,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
        );
      },
      itemCount: users.length,
    );
  }
}
