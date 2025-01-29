import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Layout/newsapp/cubit/states.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';


class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;


  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archivedTasks = [];


  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;


  // bool isDark = false;
  //
  // void changeAppMode({required bool fromShared})
  // {
  //   if (fromShared != null)
  //   {
  //     isDark = fromShared;
  //     emit(AppChangeModeState());
  //   } else
  //   {
  //     isDark = !isDark;
  //     CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value) {
  //       emit(AppChangeModeState());
  //     });
  //   }
  // }

  bool isDark = false;
  void changeAppMode()
  {
    isDark= !isDark;
    CacheHelper.putBoolean(key: 'idDark', value: isDark).then((value) {
      emit(AppChangeModeState());
    });

  }

}