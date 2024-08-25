import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/configs/theme/app_theme.dart';
import 'data/FirestoreService.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'presentation/splash/bloc/splash_cubit.dart';
import 'presentation/splash/pages/splash.dart';
import 'service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initializeDependencies();
  ///fake data
   //TODO: uncomment this when the app is done
  // final firestoreService = FirestoreService();
  // await firestoreService.uploadFakeData();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
          theme: AppTheme.appTheme,
          debugShowCheckedModeBanner: false,
          home: const SplashPage()),
    );
  }
}
