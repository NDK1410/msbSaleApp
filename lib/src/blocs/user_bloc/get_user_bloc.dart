import 'package:bloc/bloc.dart';
import 'package:msbSaleApp/src/blocs/user_bloc/get_user_state.dart';
import 'package:msbSaleApp/src/blocs/user_bloc/user_event.dart';
import 'package:msbSaleApp/src/models/user.dart';

class GetUsersBloc extends Bloc<UsersEvent, GetUsersState> {
  @override
  GetUsersState get initialState => GetUsersUnInitial();

  @override
  Stream<GetUsersState> mapEventToState(UsersEvent event) async* {
    yield GetUsersLoading();
    if (event is GetUsersEvent) {
      yield GetUsersSuccess(listUsers());
    }
  }
}
