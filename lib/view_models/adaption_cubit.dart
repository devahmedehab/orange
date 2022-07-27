import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/filter_grid_model.dart';
import 'package:orange/repositories/constants.dart';
import 'package:orange/repositories/network/dio_helper.dart';

import '../repositories/end_point.dart';

part 'adaption_state.dart';

class AdaptionCubit extends Cubit<AdaptionState> {
  AdaptionCubit() : super(AdaptionInitial());




  late FilterGridModel filterGridModel;


  Future getFooterData() async{
    emit(FilterGridLoadingState());

    await DioHelper.getData(
      url: FOOTER,
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
