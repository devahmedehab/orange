import 'package:orange/models/footer_model.dart';

abstract class HomeViewModelState{}

class HomeViewModelInitial extends HomeViewModelState{}

class HomeViewModelChangeScreenState extends HomeViewModelState{}

class HomeFooterLoadingState extends HomeViewModelState{}
class HomeFooterSuccessState extends HomeViewModelState{
  final FooterModel footerModel;
  HomeFooterSuccessState(this.footerModel);
}
class HomeFooterErrorState extends HomeViewModelState{
  final String error;

  HomeFooterErrorState(this.error);
}