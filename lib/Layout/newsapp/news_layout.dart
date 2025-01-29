import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Layout/newsapp/cubit/cubit.dart';
import 'package:news_app/Layout/newsapp/cubit/states.dart';
import 'package:news_app/modules/search/search_screen.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

class NewsLayout  extends StatelessWidget {
  const NewsLayout ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit ,NewsStates>(
      listener:(context, state) {} ,
      builder:(context, state) {
        var cubit=NewsCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'News App',
            ),
          actions: [
            IconButton(
                onPressed: (){
                  navigateTo(context,SearchScreen(),);
                },
                icon: Icon(
                  Icons.search,
                ),),
            IconButton(
              icon: Icon(
                Icons.dark_mode,
              ),
                onPressed: (){
                  AppCubit.get(context).changeAppMode();
                },
                ),
          ],
          ),

          body:cubit.screens[cubit.currentindex],
          bottomNavigationBar:BottomNavigationBar(
           currentIndex: cubit.currentindex,
            onTap: (index){
             cubit.changeBottomNavBar(index);
            },
            items:cubit.bottomItems,
          ),
        );
    } ,

    );

  }
}
