import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'config/get it/service_locator.dart';
import 'config/routes/routes.dart';
import 'config/routes/routes_name.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyCqNyByx1G1RpeVb0ZagtZk0XywKXk_21I",
      appId: "1:1077946212560:android:70ca1d62cb4f8a1fc5bed5",
      messagingSenderId: "1077946212560",
      projectId: "flutter-prep-d83af",
      storageBucket: "flutter-prep-d83af.firebasestorage.app",
    ),
  );

  initDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, __) => const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'S.Rocks.Music',
          initialRoute: RoutesName.home,
          onGenerateRoute: Routes.generateRoute,
        //Test(),
      ),
    );
  }
}
