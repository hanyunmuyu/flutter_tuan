import 'package:flutter_tuan/common/model/User.dart';
import 'package:redux/redux.dart';

final UserReducer = combineReducers<User>([
  TypedReducer<User, UpdateUserAction>(_updateLoaded),
]);

User _updateLoaded(User user, action) {
  user = action.user;
  return user;
}

class UpdateUserAction {
  final User user;

  UpdateUserAction(this.user);
}
