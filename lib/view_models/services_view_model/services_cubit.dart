import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:orange/view_models/services_view_model/services_state.dart';

import '../../models/service_model.dart';
import '../../repositories/end_point.dart';
import '../../repositories/network/dio_helper.dart';


class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(ServicesInitial());

  static ServicesCubit get(context) => BlocProvider.of(context);

  List<String> categories = ['Dogs', 'Cats'];
  String selectedCategory = 'Dogs';

  late ServicesModel servicesModel;


  void postServices({
    required String imageBase64,
    required String categoryId,
    required String location,
    required String phoneNumber,

  }) {
    emit(ServicesLoadingState());
    DioHelper.postData(
      url: SERVICES,
      data: {
        'imageBase64': imageBase64,
        'categoryId': categoryId,
        'location': location,
        'phoneNumber': phoneNumber,

      },
    ).then((value) {
      print(value.data);
      servicesModel = ServicesModel.fromJson(value.data);

      emit(ServicesSuccessState(servicesModel));
    }).catchError((error) {
      print(error.toString());
      emit(ServicesErrorState(error.toString()));
    });
  }
}
