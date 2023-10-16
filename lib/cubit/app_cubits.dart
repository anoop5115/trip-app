// import 'package:bloc/bloc.dart';
// import 'package:tripapp/cubit/app_cubit_states.dart';

// class AppCubits extends Cubit<CubitStates> {
//   AppCubits() : super(InitialState()) {
//     emit(WelcomeState());
//   }
// }
import 'package:bloc/bloc.dart';
import 'package:tripapp/cubit/app_cubit_states.dart';

// Replace CubitStates with your actual state class

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }

  // Your Cubit logic heress
}
