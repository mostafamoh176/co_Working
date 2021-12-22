import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:meta/meta.dart';

part 'otpcubit_state.dart';

class OtpcubitCubit extends Cubit<OtpcubitState> {
  OtpcubitCubit() : super(OtpcubitInitial());

  static OtpcubitCubit get(context) => BlocProvider.of(context);
  bool onpress = true;
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 10;

  changeONpress(){
    onpress=!onpress;
    emit(ChangeOnPressValue());
  }
}
