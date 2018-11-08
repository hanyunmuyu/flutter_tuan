import 'package:redux/redux.dart';
import 'package:flutter_tuan/model/UserModel.dart';

final UserReducer = combineReducers<UserModel>([
  TypedReducer<UserModel, UpdateUserAction>(_updateLoaded),
]);

UserModel _updateLoaded(UserModel user, action) {
  user = action.user;
  return user;
}

class UpdateUserAction {
  final UserModel user;

  UpdateUserAction(this.user);
}
