// void main() async {
//   // بيتأكد ان كل حاجه هنا في الميثود خلصت و بعدين يتفح الابلكيشن
//   WidgetsFlutterBinding.ensureInitialized();
//
//   Bloc.observer = MyBlocObserver();
//   DioHelper.init();
//   await CacheHelper.init();
//
//   bool isDark = CacheHelper.getBoolean(key: 'isDark');
//
//   runApp(MyApp(isDark));
// }
//
// // Stateless
// // Stateful
//
// // class MyApp
//
// class MyApp extends StatelessWidget {
//   // constructor
//   // build
//   final bool isDark;
//
//   MyApp(this.isDark);
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers:
//       [
//         BlocProvider(
//           create: (context) => NewsCubit()
//             ..getBusiness()
//             ..getSports()
//             ..getScience(),
//         ),
//         BlocProvider(
//           create: (BuildContext context) => AppCubit()
//             ..changeAppMode(
//               fromShared: isDark,
//             ),
//         ),
//       ],
//       child: BlocConsumer<AppCubit, AppStates>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return MaterialApp(
//             debugShowCheckedModeBanner: false,
//             theme: ThemeData(
//               primarySwatch: Colors.deepOrange,
//               scaffoldBackgroundColor: Colors.white,
//               appBarTheme: AppBarTheme(
//                 titleSpacing: 20.0,
//                 backwardsCompatibility: false,
//                 systemOverlayStyle: SystemUiOverlayStyle(
//                   statusBarColor: Colors.white,
//                   statusBarIconBrightness: Brightness.dark,
//                 ),
//                 backgroundColor: Colors.white,
//                 elevation: 0.0,
//                 titleTextStyle: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 iconTheme: IconThemeData(
//                   color: Colors.black,
//                 ),
//               ),
//               floatingActionButtonTheme: FloatingActionButtonThemeData(
//                 backgroundColor: Colors.deepOrange,
//               ),
//               bottomNavigationBarTheme: BottomNavigationBarThemeData(
//                 type: BottomNavigationBarType.fixed,
//                 selectedItemColor: Colors.deepOrange,
//                 unselectedItemColor: Colors.grey,
//                 elevation: 20.0,
//                 backgroundColor: Colors.white,
//               ),
//               textTheme: TextTheme(
//                 bodyText1: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             darkTheme: ThemeData(
//               primarySwatch: Colors.deepOrange,
//               scaffoldBackgroundColor: HexColor('333739'),
//               appBarTheme: AppBarTheme(
//                 titleSpacing: 20.0,
//                 backwardsCompatibility: false,
//                 systemOverlayStyle: SystemUiOverlayStyle(
//                   statusBarColor: HexColor('333739'),
//                   statusBarIconBrightness: Brightness.light,
//                 ),
//                 backgroundColor: HexColor('333739'),
//                 elevation: 0.0,
//                 titleTextStyle: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 iconTheme: IconThemeData(
//                   color: Colors.white,
//                 ),
//               ),
//               floatingActionButtonTheme: FloatingActionButtonThemeData(
//                 backgroundColor: Colors.deepOrange,
//               ),
//               bottomNavigationBarTheme: BottomNavigationBarThemeData(
//                 type: BottomNavigationBarType.fixed,
//                 selectedItemColor: Colors.deepOrange,
//                 unselectedItemColor: Colors.grey,
//                 elevation: 20.0,
//                 backgroundColor: HexColor('333739'),
//               ),
//               textTheme: TextTheme(
//                 bodyText1: TextStyle(
//                   fontSize: 18.0,
//                   fontWeight: FontWeight.w600,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             themeMode:
//             AppCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
//             home: NewsLayout(),
//           );
//         },
//       ),
//     );
//   }
// }











