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


  List<String> categories = ['Dogs', 'Cats'];
  String selectedCategory = 'Dogs';

  List<String> years = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];
  String selectedYear = '1';

  List<String> months = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];
  String selectedMonth = '1';

  List<String> sizes = ['Small', 'Medium', 'Large'];
  String selectedSize = 'Small';

  List<String> breeds = [
    'Dogo',
    'German',
    'Shepherd',
    'Great Dane',
    'Kangal',
    'Pitbull'
  ];
  String selectedBreed = 'German';

  List<String> genders = ['Male', 'Female'];
  String selectedGender = 'Male';

  List<String> hairLengths = ['Short', 'Medium', 'Tall'];
  String selectedHairLength = 'Short';

  List<String> behaviours = ['Outgoing', 'Shy', 'Bounded Pair', 'Blind'];
  String selectedBehaviour = 'Shy';

  List<String> houseTrained = ['Yes', 'No'];
  String selectedHouseTrained = 'Yes';

  List<String> colors = [
    'Brown',
    'Dark chocolate',
    'Red',
    'Golden',
    'Yellow',
    'Cream',
    'Blue',
    'Kerry',
    'Blue',
    'Grey'
  ];
  String selectedColor = 'Red';


}