import 'package:flutter/material.dart';
import '../presentation/resources/routes/navigation_manager.dart';
import '../presentation/resources/routes/routes_constants.dart';
import '../presentation/resources/routes/routes_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: CharactersView(),
        initialRoute: RouttesConstants.charactersRoute,
        onGenerateRoute: RoutesGenerator.onGenerateRoute,
        navigatorKey: NavigationManager.navigatorKey,
      );
}
