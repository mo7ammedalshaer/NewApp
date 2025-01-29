 import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:news_app/Layout/newsapp/cubit/cubit.dart';
import 'package:news_app/Layout/newsapp/news_layout.dart';
 import 'package:bloc/bloc.dart';
import 'package:news_app/bloc_observer.dart';
import 'package:news_app/shared/cubit/cubit.dart';
import 'package:news_app/shared/cubit/states.dart';
import 'package:news_app/shared/network/local/cache_helper.dart';
import 'package:news_app/shared/network/remote/dio_helper.dart';

 void main() async{
   WidgetsFlutterBinding.ensureInitialized();
   Bloc.observer = MyBlocObserver();
   DioHelper.init();
  await CacheHelper.init();
   // bool? isdark = CacheHelper.getBoolean(key: "isdark");
   runApp( MyApp());
 }

 class MyApp extends StatelessWidget {
   // final bool isdark;
   // MyApp(this.isdark);

   @override
   Widget build(BuildContext context)
   {
     return MultiBlocProvider(
       providers: [
         BlocProvider(create: (context)=> NewsCubit() ..getBusiness() ..getSports()..getScience()),
         BlocProvider( create: (BuildContext context) => AppCubit()),
       ],
       child: BlocConsumer<AppCubit ,AppStates>(
       listener: (context, state) {},
       builder: (context, state) {
         return MaterialApp(
           debugShowCheckedModeBanner: false,
           theme: ThemeData(
             primarySwatch:Colors.deepOrange,

             scaffoldBackgroundColor: Colors.white,
             appBarTheme: AppBarTheme(
               titleSpacing: 20.0,

               backwardsCompatibility: false,
               backgroundColor: Colors.white,
               elevation: 0.0,
               systemOverlayStyle: SystemUiOverlayStyle(
                 statusBarColor: Colors.white,
                 statusBarIconBrightness: Brightness.dark,
               ),
               titleTextStyle: TextStyle(
                 color: Colors.black,
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold,
               ),
               iconTheme:IconThemeData(
                 color: Colors.black,
               ) ,
             ),
             bottomNavigationBarTheme: BottomNavigationBarThemeData(
               type: BottomNavigationBarType.fixed,
               selectedItemColor: Colors.deepOrange,
               elevation: 20.0,
               backgroundColor:  Colors.white,
               unselectedItemColor: Colors.grey,
             ),
             textTheme: TextTheme(
               bodyText1: TextStyle(
                 fontSize: 18.0,
                 fontWeight: FontWeight.w600,
                 color: Colors.black,
               ),

             ),
           ),
           darkTheme: ThemeData(
             scaffoldBackgroundColor: HexColor('333739'),
             primarySwatch:Colors.deepOrange,
             appBarTheme: AppBarTheme(
               titleSpacing: 20.0,
               backwardsCompatibility: false,
               backgroundColor:  HexColor('333739'),
               elevation: 0.0,
               systemOverlayStyle: SystemUiOverlayStyle(
                 statusBarColor:  HexColor('333739'),
                 statusBarIconBrightness: Brightness.light,
               ),
               titleTextStyle: TextStyle(
                 color: Colors.white,
                 fontSize: 20.0,
                 fontWeight: FontWeight.bold,
               ),
               iconTheme:IconThemeData(
                 color: Colors.white,
               ) ,
             ),
             bottomNavigationBarTheme: BottomNavigationBarThemeData(
               type: BottomNavigationBarType.fixed,
               selectedItemColor: Colors.deepOrange,
               elevation: 20.0,
               backgroundColor:  HexColor('333739'),
               unselectedItemColor: Colors.grey,
             ),
             textTheme: TextTheme(
               bodyText1: TextStyle(
                 fontSize: 18.0,
                 fontWeight: FontWeight.w600,
                 color: Colors.white,
               ),

             ),
           ),
           themeMode: AppCubit.get(context).isDark ? ThemeMode.dark: ThemeMode.light,
           home:NewsLayout(),
         );
       },

       ),
     ) ;
   }

 }












