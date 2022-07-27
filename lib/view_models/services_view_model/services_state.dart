part of 'services_cubit.dart';
@immutable
abstract class ServicesViewModelState {}

class ServicesViewModelInitial extends ServicesViewModelState {}

class RequestLoadingState extends ServicesViewModelState{}

class RequestSuccessState extends ServicesViewModelState{

  final ServicesModel sendFilterModel;

  RequestSuccessState(this.sendFilterModel);
}
class RequestErrorState extends ServicesViewModelState{
  final String error;

  RequestErrorState(this.error);
}