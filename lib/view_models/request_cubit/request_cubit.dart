import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/repositories/network/dio_helper.dart';
import 'package:orange/view_models/request_cubit/request_state.dart';

import '../../models/send_filter_model.dart';
import '../../repositories/end_point.dart';
import '../login_cubit/login_states.dart';



class RequestCubit extends Cubit<RequestStates> {
  RequestCubit() :super (RequestInitialState());

  static RequestCubit get(context) => BlocProvider.of(context);


  late SendFilterModel sendFilterModel;
  void dogData({
    required String breed,
    required String age,
    required String size,
    required String goodWith,
    required String gender,
    required String color,
    required String hairLength,
    required String behaviour,


  }) {
    emit(RequestLoadingState());
    DioHelper.postData(
      url: CREATE,
      data: {
        'breed': breed,
        'age': age,
        'size': size,
        'goodWith': goodWith,
        'gender': gender,
        'color': color,
        'hairLength': hairLength,
        'behaviour': behaviour,
      },
    ).then((value) {
      print(value.data);
      sendFilterModel = SendFilterModel.fromJson(value.data);


      emit(RequestSuccessState(sendFilterModel));
    }).catchError((error) {
      print(error.toString());
      emit(RequestErrorState(error.toString()));
    });
  }


}