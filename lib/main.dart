import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix1/application/downloads/downloads_bloc.dart';
import 'package:netflix1/core/colors/colors.dart';
import 'package:netflix1/domain/core/di/injectable.dart';
import 'package:netflix1/presentation/main_page/widgets/screen_main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.black,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
            bodySmall: TextStyle(color: Colors.white),
          ),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
