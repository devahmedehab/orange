import '../../models/send_filter_model.dart';

abstract class RequestStates{}


class RequestInitialState extends RequestStates{}
class RequestLoadingState extends RequestStates{}
class RequestSuccessState extends RequestStates{

  final SendFilterModel sendFilterModel;

  RequestSuccessState(this.sendFilterModel);
}
class RequestErrorState extends RequestStates{
  final String error;

  RequestErrorState(this.error);
}
class RequestChangeScreenState extends RequestStates{}





