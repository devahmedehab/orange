import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/about_model.dart';
import 'package:orange/repositories/network/dio_helper.dart';

import '../repositories/constants.dart';

part 'about_us_state.dart';

class AboutUsCubit extends Cubit<AboutUsState> {
  AboutUsCubit() : super(AboutUsInitialState());



  late AboutsModel aboutsModel;


  Future getListData() async{
    emit(AboutUsLoadingState());

    await DioHelper.getData(
      url: ,
      token: token,

    ).then((value) {
      aboutsModel = AboutsModel.fromJson(value.data);

      emit(AboutUsSuccessState(aboutsModel));
    }).catchError((error) {
      print(error.toString());
      emit(AboutUsErrorState(error.toString()));
    });
  }

}
