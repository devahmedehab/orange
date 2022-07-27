import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orange/models/footer_model.dart';
import 'package:orange/repositories/network/dio_helper.dart';
import 'package:orange/views/adaption.dart';
import 'package:orange/views/adaption_search_view.dart';
import '../../repositories/constants.dart';
import '../../repositories/end_point.dart';
import '../../views/about_us_view.dart';
import '../../views/login_view.dart';
import '../../views/request_view.dart';
import '../../views/services_view.dart';
import '../../views/sign_up_view.dart';
import 'HomeViewModelState.dart';

class HomeViewModelCubit extends Cubit<HomeViewModelState> {
  HomeViewModelCubit() : super(HomeViewModelInitial());


  static HomeViewModelCubit get(context) => BlocProvider.of(context);


  var isHover = [false, false, false, false, false, false];

  List<Widget> screens = [
    AboutUSView(),
    AdaptionScreen(),
    HelpYourFriendScreen(),
    RequestView(),
    SignUpView(),
    LoginView(),
    AdaptionSearchView()
  ];


 late FooterModel footerModel;


  Future getFooterData() async{
    emit(HomeFooterLoadingState());

    await DioHelper.getData(
      url: FOOTER,
      token: token,

    ).then((value) {
      footerModel = FooterModel.fromJson(value.data);
      printFullText(footerModel.location.toString());

      emit(HomeFooterSuccessState(footerModel));
    }).catchError((error) {
      print(error.toString());
      emit(HomeFooterErrorState(error.toString()));
    });
  }



  void changeScreen(int currentIndex)
  {

    index=currentIndex;

    emit(HomeViewModelChangeScreenState());
  }



}
