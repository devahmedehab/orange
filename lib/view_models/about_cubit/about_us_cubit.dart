import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/models/about_model.dart';
import 'package:orange/repositories/end_point.dart';
import 'package:orange/repositories/network/dio_helper.dart';

import '../../repositories/constants.dart';

part 'about_us_state.dart';

class AboutUsCubit extends Cubit<AboutUsState> {
  AboutUsCubit() : super(AboutUsInitialState());

  static  AboutUsCubit get(context) => BlocProvider.of(context);

  void changeScreen(int currentIndex)
  {

    index=currentIndex;

    emit(ChangeScreenState());
  }
  late AboutsModel aboutsModel;


  Future getAboutData() async{
    emit(AboutUsLoadingState());

    await DioHelper.getData(
      url:About ,
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
