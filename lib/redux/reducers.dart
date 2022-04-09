import 'actions.dart';
import 'store.dart';

AppState reducers(AppState prevState, dynamic action) {
  // print("-------------");
  // print("In the reducer");

  if (action is UpdateUser) {
    // print(action);
    return AppState.copyWith(prev: prevState, user: action.payload);
  // } else if (action is UpdateCamera) {
  //   print(action);
  //   return AppState.copyWith(prev: prevState, camera: action.payload);
  } else {
    return AppState(prevState.user);
  }
}