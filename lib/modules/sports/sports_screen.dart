import 'package:flutter/material.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Layout/newsapp/cubit/cubit.dart';
import 'package:news_app/Layout/newsapp/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';

class SportsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<NewsCubit,NewsStates>(
      listener: (context, state) {},
      builder: (context ,state){
        var list=NewsCubit.get(context).Sports;

        return articleBuilder(list,context);
      },
    );
  }
}
