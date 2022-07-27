import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/models/filter_grid_model.dart';
import 'package:orange/repositories/constants.dart';
import 'package:orange/repositories/network/dio_helper.dart';

import 'adaption_state.dart';


class AdaptionCubit extends Cubit<AdaptionState> {
  AdaptionCubit() : super(AdaptionInitial());

  static AdaptionCubit get(context) => BlocProvider.of(context);



  late FilterGridModel filterGridModel;


  Future getListData() async{
    emit(FilterGridLoadingState());

    await DioHelper.getData(
      url: '/static/homepage/footer/$catId',
      token: token,

    ).then((value) {
      filterGridModel = FilterGridModel.fromJson(value.data);
      printFullText(filterGridModel.colors as String);

      emit(FilterGridSuccessState(filterGridModel));
    }).catchError((error) {
      print(error.toString());
      emit(FilterGridErrorState(error.toString()));
    });
  }







}
